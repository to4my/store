require_relative 'lib/product'
require_relative 'lib/film'
require_relative 'lib/book'
require_relative 'lib/product_collection'
require_relative 'lib/disk'

collection = ProductCollection.from_dir

user_choice = -1
total = 0
basket = []

until user_choice == 0  do
  puts "Что Вы хотите купить:"
  puts

  collection.each.with_index(1) do |line, index|
    puts "#{index}. #{line}"
  end
  puts "0. Выход"


  user_choice = gets.to_i

  break  if user_choice == 0

  current_product = collection[user_choice - 1]
  current_product.amount -= 1
  total += current_product.price
  basket << current_product
  puts "Вы выбрали #{current_product}"
  puts
  puts "Всего товаров на сумму: #{total} руб."
  puts
end

puts "Вы купили:"
puts
puts basket
puts
puts "С Вас  - #{total} руб. Спасибо за покупки!"
