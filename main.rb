if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require_relative 'lib/product'
require_relative 'lib/book'
require_relative 'lib/film'
require_relative 'lib/disk'
require_relative 'lib/product_collection'
require_relative 'lib/shopping_list'

collection = ProductCollection.from_dir(File.dirname(__FILE__) + '/data').to_a
products = ShoppingList.new

loop do
  puts 'Что хотите купить?'
  puts
  collection.each.with_index(1) do |product, index|
    puts "#{index}. #{product}"    #, осталось: #{product.amount} шт.
  end
  puts '0. Выход'
  puts

  user_input = gets.to_i
  if user_input.zero?
    puts "Вы купили:"
    puts products.show_list
    puts "Всего товаров: #{products.amount}"
    puts "С Вас — #{products.total_price} руб. Спасибо за покупки!"
    break
  elsif (1..collection.size).include?(user_input)
    product = collection[user_input - 1]
    if product.amount.to_i.positive?
      product.buy
      products.add_product(product)
      puts "Вы выбрали: #{product}"
      puts "Всего товаров на сумму: #{products.total_price} руб."
      puts
    elsif product.amount.to_i.zero?
      puts 'К сожалению, товар закончился'
    end
  else
    puts 'Такого товара нет в списке'
  end
end
