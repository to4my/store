class Product
  attr_accessor :price, :amount, :title #, :product

  def initialize(params)
    self.title = params[:title]
    self.price = params[:price]
    self.amount = params[:amount]
  end

  def update(params)
    self.title = params[:title] if params[:title]
    self.price = params[:price] if params[:price]
    self.amount = params[:amount] if params[:amount]
  end

  def self.from_file
    puts "NoMethodError"
  end

  def to_s

  end
end

