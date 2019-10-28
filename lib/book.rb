class Book < Product
  attr_accessor :genre, :author

  def initialize(params)
    super

<<<<<<< HEAD
    @genre = params[:genre]
    @author = params[:author]
=======
    self.genre = params[:genre]
    self.autor = params[:autor]
>>>>>>> 7f81038b3d76471558c0267d2ade48d8bfb821ee
  end

  def update(params)
    super

<<<<<<< HEAD
    @genre = params[:genre] if params[:genre]
    @author = params[:author] if params[:author]
  end

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: 'UTF-8', chomp: true)

    new(
      title: lines[0],
      genre: lines[1],
      author: lines[2],
      price: lines[3].to_i,
      amount: lines[4].to_i
    )
  end

  def to_s
    "Книга <<#{title}>>, #{genre}, автор - #{author}, #{super}"
=======
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
>>>>>>> 7f81038b3d76471558c0267d2ade48d8bfb821ee
  end
end
