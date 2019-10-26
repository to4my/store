class Book < Product
  attr_accessor :genre, :autor

  def initialize(params)
    super

    self.genre = params[:genre]
    self.autor = params[:autor]
  end

  def update(params)
    super

    self.genre = params[:genre] if params[:genre]
    self.autor = params[:autor] if params[:autor]
  end

  def self.from_file
    films = Dir["#{__dir__}/../data/book/*.txt"].map do |file_name|
      lines = File.readlines(file_name, encoding: "utf-8", chomp: true )
      Book.new(title: lines[0], genre: lines[1], autor: lines[2], price: lines[3].to_i, amount: lines[4].to_i)
    end
  end

  def to_s
    "Книга <<#{@title}>>, #{@genre}, автор - #{@autor}, " \
      "#{@price} руб. (осталось #{@amount})"
  end
end
