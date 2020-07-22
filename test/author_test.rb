require 'minitest/autorun'
require 'minitest/pride'
require './lib/author'

class AuthorTest < Minitest::Test

  def test_it_exists
    author = Author.new

  end
end
