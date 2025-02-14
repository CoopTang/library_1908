require 'minitest/autorun'
require 'minitest/pride'
require './lib/book'

class BookTest < Minitest::Test

  def setup
    @book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
  end

  def test_it_exists
    assert_instance_of Book, @book
  end

  def test_it_has_title
    assert_equal "To Kill a Mockingbird", @book.title
  end

  def test_can_get_full_name
    assert_equal "Harper Lee", @book.author
  end

  def test_can_get_publication_year
    book_1 = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "1960"})
    assert_equal "1960", book_1.publication_year
    assert_equal "1960", @book.publication_year
  end
end