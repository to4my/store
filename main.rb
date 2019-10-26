# encoding: UTF-8
# XXX/ Этот код необходим только при использовании русских букв на Windows
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end
# # /XXX
puts "Нужно купить:"
whishlist = %W(масло молоко хлопья картошка курица помидоры)

puts whishlist.to_s
whishlist.each.with_index(1) do |product, index|
  puts "#{index}: #{product}"
end

bag = []

while whishlist.length > 0
  puts
  basket = []
  stek = ""

  puts "Что уже куплено: #{bag.to_s}"

  stek = gets.chomp

  basket << stek if whishlist.include?(stek)

  bag += basket
  puts
  puts "Нужно еще купить" if whishlist.length >1

  whishlist -= basket
  puts whishlist.to_s if whishlist.length >0

  puts "Поздравляю! Все куплено: #{bag.to_s}" if whishlist.length == 0
  puts
end


