class Product
  attr_accessor :price, :amount, :title #, :product

  def initialize(params)
<<<<<<< HEAD
    @title = params[:title]
    @price = params[:price]
    @amount = params[:amount]
    @count = 0
  end

  def update(params)
    @price = params[:price] if params[:price]
    @amount = params[:amount] if params[:amount]
    @title = params[:title] if params[:title]
=======
    self.title = params[:title]
    self.price = params[:price]
    self.amount = params[:amount]
  end

  def update(params)
    self.title = params[:title] if params[:title]
    self.price = params[:price] if params[:price]
    self.amount = params[:amount] if params[:amount]
>>>>>>> 7f81038b3d76471558c0267d2ade48d8bfb821ee
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
