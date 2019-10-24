require_relative 'product'

class Movie < Product
  attr_accessor :year, :director

  def initialize(params)
    super

    @year = params[:year]
    @director = params[:director]
  end

  def update(params)
    super

    @initial.merge!(params)
  end

  def to_s
    "Фильм <<#{@initial[:title]}>>, #{@initial[:year]}, реж. #{@initial[:director]}," \
      " #{@initial[:price]} руб. (осталось #{@initial[:amount]})"
    # @initial.to_s
  end
end
