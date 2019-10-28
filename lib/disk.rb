class Disk < Product
  attr_accessor :artist, :genre, :year

  def initialize(params)
    super

<<<<<<< HEAD
    @artist = params[:artist]
    @genre = params[:genre]
    @year = params[:year]
  end

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: "utf-8", chomp: true)
    new(
    title: lines[0],
    artist: lines[1],
    genre: lines[2],
    year: lines[3].to_i,
    price: lines[4].to_i,
    amount: lines[5].to_i,
    )
  end

  def update
    super

    @artist = params[:artist] if params[:artist]
    @genre = params[:genre] if params[:genre]
    @year = params[:year] if params[:year]
  end

  def to_s
    "Альбом #{@artist} - «#{@title}», #{@genre}, #{@year}, #{super}"
  end

=======
    self.artist =  params[:artist]
    self.genre =  params[:genre]
    self.year =  params[:year]
  end

  def update(params)
    super

    self.genre = params[:genre] if params[:genre]
    self.artist = params[:artist] if params[:artist]
    self.year = params[:year] if params[:year]
  end

  def to_s
    "Альбом #{@title} - <<#{@artist}>>, #{@genre}, #{@year}, " \
      "#{@price} руб. (осталось #{@amount})"
  end
>>>>>>> 7f81038b3d76471558c0267d2ade48d8bfb821ee
end
