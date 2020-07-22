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
    @books << name.books
  end



  def earliest_publication_for_author(author)
  result = author.books.map do |book|
      book.publication_year.to_i
    end

    result.min.to_s
  end

  def latest_publication_for_author(author)
  result = author.books.map do |book|
      book.publication_year.to_i
    end

    result.max.to_s
  end

  def publication_time_frame_for(author)
    {:start => earliest_publication_for_author(author),
    :end => latest_publication_for_author(author)}
  end

end
