require './lib/author'
class Library < Author

  attr_reader :name,
              :books,
              :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(name)
    @authors << name
  end

  def add_book(book)
    @books << book
  end

end
