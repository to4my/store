class Book < Product
  attr_accessor :year, :autor

  def initialize(params)
    super

    @year = params[:year]
    @autor = params[:autor]
  end

  def to_s
    "Книга <<#{@title}>>, #{@year}, автор - #{@autor}, #{@price} руб. (осталось #{@amount})"
  end
end
