require_relative './rental'
# book class
class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(_date, _person)
    @rental.push(rental)
    rental.book = self
  end
end
