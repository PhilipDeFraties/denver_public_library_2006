require 'minitest/autorun'
require 'minitest/pride'
require './lib/author'

class AuthorTest < Minitest::Test

  def test_it_exists
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

  end

  def test_it_has_attributes
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal "Charlotte", charlotte_bronte.first_name
    assert_equal "Bronte", charlotte_bronte.last_name
  end

  def test_it_can_give_full_name
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal "Charlotte Bronte", charlotte_bronte.name
  end

  def test_it_has_no_books_by_default
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal [], charlotte_bronte.books
  end

end
