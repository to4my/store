require_relative 'film'
require_relative 'book'

class ProductCollection

  def self.from_dir
    @collection = []
    @collection = Film.from_file + Book.from_file
  end

  def to_a
     "#{@collection[0]} --"
  end

  def sort

  end
end