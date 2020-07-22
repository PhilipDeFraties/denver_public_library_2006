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

  def earliest_publication_for_author(author)
    @books.find_all do |book|
      book.author
    end
  end

  def publication_time_frame_for(author)
    {:start => earliest_publication_for_author,
    :end => latest_publication_for_author}
  end

end
