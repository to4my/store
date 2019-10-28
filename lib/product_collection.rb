<<<<<<< HEAD
class ProductCollection

  PRODUCT_TYPES = {
    film: {dir: 'films', class: Film},
    book: {dir: 'books', class: Book},
    disk: {dir: 'disks', class: Disk}
  }

  def initialize(products = [])
    @products = products
  end

  def self.from_dir(dir_path)
    products = []

    PRODUCT_TYPES.each do |type, hash|
      product_dir = hash[:dir]
      product_class = hash[:class]

      Dir[dir_path + '/' + product_dir + '/*.txt'].each do |path|
        products << product_class.from_file(path)
      end
    end

    self.new(products)
  end

  def to_a
    @products
=======
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

>>>>>>> 7f81038b3d76471558c0267d2ade48d8bfb821ee
  end

  def sort!(params)
    case params[:by]
    when :title
      @products.sort_by! { |product| product.to_s }
    when :price
      @products.sort_by! { |product| product.price }
    when :amount
      @products.sort_by! { |product| product.amount }
    end

    @products.reverse! if params[:order] == :asc

    self
  end
end
