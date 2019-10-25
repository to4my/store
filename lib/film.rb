require_relative 'product'

class Film < Product
  attr_accessor :year, :director

  def initialize(params)
    super

    @director = params[:director]
    @year = params[:year]
  end

  def update(params)
    super

    @initial.merge!(params)
  end

  def self.from_file
    films = Dir["#{__dir__}/../data/films/*.txt"].map do |file_name|
      lines = File.readlines(file_name, encoding: "utf-8", chomp: true )
      Film.new(title: lines[0], director: lines[1], year: lines[2].to_i, price: lines[3].to_i, amount: lines[4].to_i)
    end
  end

  def to_s
    "Фильм <<#{@initial[:title]}>>, #{@initial[:year]}, реж. #{@initial[:director]}," \
      " #{@initial[:price]} руб. (осталось #{@initial[:amount]})"
  end
end
