class Film < Product
  attr_accessor :year, :director

  def initialize(params)
    super

    @director = params[:director]
    @year = params[:year]
  end

  def update(params)
    super

    @director = params[:director] if params[:director]
    @year = params[:year] if params[:year]
  end

  def self.from_file(file_path)
    lines = File.readlines(file_path, encoding: "utf-8", chomp: true)
    new(
      title: lines[0],
      director: lines[1],
      year: lines[2].to_i,
      price: lines[3].to_i,
      amount: lines[4].to_i
    )
  end

  def to_s
    "Фильм <<#{title}>>, #{year}, реж. #{director}, #{super}"
  end
end
