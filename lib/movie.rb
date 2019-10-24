class Movie < Product
  attr_accessor :year, :director

  def initialize(params)
    super

    @year = params[:year]
    @director = params[:director]
  end

  def to_s
    "Фильм <<#{@title}>>, #{@year}, реж. #{@director}, #{@price} руб. (осталось #{@amount})"
  end
end
