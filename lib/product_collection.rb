class ProductCollection < Product

  def initialize

  end

  def self.from_dir
    Dir["#{__dir__}/../data/**/*.txt"].map do |file_name|
      lines = File.readlines(file_name, encoding: "utf-8", chomp: true)
      if file_name.include?("book")
        Book.new(title: lines[0], genre: lines[1], autor: lines[2], price: lines[3].to_i, amount: lines[4].to_i)
      elsif file_name.include?("film")
        Film.new(title: lines[0], director: lines[2], year: lines[1].to_i, price: lines[3].to_i, amount: lines[4].to_i)
      elsif file_name.include?("disk")
        Disk.new(title: lines[0], artist: lines[1], genre: lines[2], year: lines[3].to_i, price: lines[4].to_i, amount: lines[5].to_i)end
    end
  end

  def to_a

  end

  def sort

  end
end
