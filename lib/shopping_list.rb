class ShoppingList
  def initialize
    @shopping_list = []
    @total_price = 0
    @amount = 0
  end

  def add_product(product)
    unless @shopping_list.include?(product)
      @shopping_list << product
    end
    @total_price += product.price
    @amount += 1
  end

  def show_list
    @shopping_list.map.with_index(1) { |product, index| "#{index}. #{product}, #{product.count} шт." }
  end

  def amount
    @amount
  end

  def total_price
    @total_price
  end
end
