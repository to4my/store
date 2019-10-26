require_relative 'lib/product'
require_relative 'lib/film'
require_relative 'lib/book'
require_relative 'lib/product_collection'
require_relative 'lib/disk'
#
# 1. Фильм «Леон», 1994, реж. Люк Бессон, 990 руб. (осталось 5)
# 2. Книга «Идиот», роман, автор — Федор Достоевский, 1500 руб. (осталось 10)
# 3. Книга «Санькя», роман, автор — Захар Прилепин, 1000 руб. (осталось 3)
# 4. Альбом Judas Priest — «Painkiller», Heavy Metal, 1990, 990 руб. (осталось 3)
# 0. Выход

collection = ProductCollection.from_dir

user_answer = -1
total = 0
# puts collection.count
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
