class Product
  attr_accessor :price, :amount, :title

  def initialize(params)
    @title = params[:title]
    @price = params[:price]
    @amount = params[:amount]
    @count = 0
  end

  def update(params)
    @price = params[:price] if params[:price]
    @amount = params[:amount] if params[:amount]
    @title = params[:title] if params[:title]
  end

  def self.from_file(file_path)
    raise NotImplementedError
  end

  def buy
    @amount = @amount.to_i - 1
    @count += 1
  end

  def count
    @count
  end

  def to_s
    "цена: #{price}руб. (осталось #{amount})"
  end
end

