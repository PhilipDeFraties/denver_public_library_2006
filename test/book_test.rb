require 'minitest/autorun'
require 'minitest/pride'
require './lib/book'

class BookTest < Minitest::Test

  def test_it_exists
    book = Book.new

    assert_instance_of Book, book
  end



end