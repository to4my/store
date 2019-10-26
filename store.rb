require_relative 'lib/product'
require_relative 'lib/film'
require_relative 'lib/book'
require_relative 'lib/product_collection'
require_relative 'lib/disk'

collection = ProductCollection.from_dir

user_answer = -1
total = 0

while (user_answer != 0)  do
  puts "Что Вы хотите купить:"
  puts

  collection.each.with_index(1) do |line, index|
    puts "#{index}. #{line}"
  end
  puts "0. Выход"

  puts "Введите цифру от 1 до #{collection.count}"
  user_choice = gets.to_i

  current_product = collection[user_choice - 1]
  current_product.amount -= 1
  total += current_product.price
  puts "Вы выбрали #{current_product}"
  puts
  puts "Всего товаров на сумму: #{total} руб."
  puts
end
