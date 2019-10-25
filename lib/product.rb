class Product
  attr_accessor :price, :amount, :title

  def initialize(params)
    @title = params[:title]
    @price = params[:price]
    @amount = params[:amount]
    @initial = params
  end

  def update(params)
    @initial.merge!(params)
  end

  def self.from_file
    puts "NoMethodError"
  end

  def to_s

  end
end

