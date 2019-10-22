class Product
  attr_reader :price, :amount

  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
  end

  def to_s
    "Цена: #{@price}, количество: #{@amount}"
  end
end

