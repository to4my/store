class Film < Product
  attr_accessor :year, :director

  def initialize(params)
    super

    self.director = params[:director]
    self.year = params[:year]
  end

  def update(params)
    super

    self.director = params[:director] if params[:director]
    self.year = params[:year] if params[:year]
  end

  def self.from_file
    Dir["#{__dir__}/../data/film/*.txt"].map do |file_name|
      lines = File.readlines(file_name, encoding: "utf-8", chomp: true)
      Film.new(title: lines[0], director: lines[1], year: lines[2].to_i, price: lines[3].to_i, amount: lines[4].to_i)
    end
  end

  def to_s
    "Фильм <<#{@title}>>, #{@year}, реж. #{@director}," \
      " #{@price} руб. (осталось #{@amount})"
    end
end
