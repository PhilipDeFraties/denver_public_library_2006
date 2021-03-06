require 'minitest/autorun'
require 'minitest/pride'
require './lib/author'
require './lib/library'
require './lib/book'
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

  def test_it_can_add_authors
    dpl = Library.new("Denver Public Library")

    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})

    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)

    assert_equal [charlotte_bronte, harper_lee], dpl.authors
  end

  def test_it_can_add_books
    dpl = Library.new("Denver Public Library")

    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})

    charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    charlotte_bronte.write("The Professor", "1857")
    charlotte_bronte.write("Villette", "1853")
    harper_lee.write("To Kill a Mockingbird", "July 11, 1960")

    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)

    assert_equal [], dpl.books
    #Im realizing all too late that maybe I needed a module to make this work
    #according to spec.
  end

  def test_it_can_give_publication_time_frame
    dpl = Library.new("Denver Public Library")

    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    harper_lee = Author.new({first_name: "Harper", last_name: "Lee"})

    jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
    professor = charlotte_bronte.write("The Professor", "1857")
    villette = charlotte_bronte.write("Villette", "1853")
    mockingbird = harper_lee.write("To Kill a Mockingbird", "July 11, 1960")

    dpl.add_author(charlotte_bronte)
    dpl.add_author(harper_lee)

    dpl.earliest_publication_for_author(charlotte_bronte)
    assert_equal ({:start=>"1847", :end=>"1857"}), dpl.publication_time_frame_for(charlotte_bronte)
  end


end
