class Book < Product
  attr_accessor :genre, :author

  def initialize(params)
    super

    @genre = params[:genre]
    @author = params[:author]
  end

  def update(params)
    super

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
  end
end
