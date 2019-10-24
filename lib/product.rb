class Product
  attr_accessor :price, :amount, :title

  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
    @title = params[:title]
    @initial = params
  end

  def update(params)
    @initial.merge!(params)
  end


  def to_s

  end
end

