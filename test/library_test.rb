require 'minitest/autorun'
require 'minitest/pride'
require './lib/author'
require './lib/library'
require 'pry'

class LibraryTest < Minitest::Test

  def test_it_exists
    dpl = Library.new("Denver Public Library")

    assert_instance_of Library, dpl
  end

  def test_it_can_have_name
    dpl = Library.new("Denver Public Library")

    assert_equal "Denver Public Library", dpl.name
  end

  def test_it_has_no_books_by_default
    dpl = Library.new("Denver Public Library")

    assert_equal [], dpl.books
  end

  def test_it_has_no_authors_by_default
    dpl = Library.new("Denver Public Library")

    assert_equal [], dpl.authors
  end
end
