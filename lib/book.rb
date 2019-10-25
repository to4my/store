require_relative 'product'

class Book < Product
  attr_accessor :genre, :autor

  def initialize(params)
    super

    @year = params[:genre]
    @autor = params[:autor]
  end

  def update(params)
    super

    @initial.merge!(params)
  end

  def self.from_file
    films = Dir["#{__dir__}/../data/books/*.txt"].map do |file_name|
      lines = File.readlines(file_name, encoding: "utf-8", chomp: true )
      Book.new(title: lines[0], genre: lines[1], autor: lines[2], price: lines[3].to_i, amount: lines[4].to_i)
    end
  end

  def to_s
    "Книга <<#{@initial[:title]}>>, #{@initial[:genre]}, автор - #{@initial[:autor]}, " \
      "#{@initial[:price]} руб. (осталось #{@initial[:amount]})"
  end
end
