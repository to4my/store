class Disk < Product
  attr_accessor :artist, :genre, :year

  def initialize(params)
    super

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
end
