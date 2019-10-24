require_relative 'lib/product'
require_relative 'lib/movie'
require_relative 'lib/book'

movie1 = Movie.new(price: 990, amount: 5, title: "Леон", director: "Люк Бессон", year: 1994)
movie2 = Movie.new(price: 390, amount: 1, title: "Дурак", director: "Быков Юрий", year: 2014)
puts movie1
puts movie2

book = Book.new(autor: "Достоевский Ф.М.", title: "Идиот", year: "роман", price: 1500, amount: 10)
puts book

movie1.year = 2000
puts movie1


movie2.update(price: 100, title: "123")
puts movie2
