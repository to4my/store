class ProductCollection < Product

  def self.from_dir
    product = Film.from_file + Book.from_file

    # product = Dir["#{__dir__}/../data/films/*.txt"].map do |file_name|
    #   lines = File.readlines(file_name, encoding: "utf-8", chomp: true )
    #   Film.new(title: lines[0], director: lines[1], year: lines[2].to_i, price: lines[3].to_i, amount: lines[4].to_i)
    # end
  end

  def to_a

  end

  def sort

  end
end