require_relative 'lib/product'
require_relative 'lib/film'
require_relative 'lib/book'
require_relative 'lib/product_collection'
#
# collection_film = Film.from_file
# puts collection_film
# collection_book = Book.from_file
# puts collection_book[3]
# puts Film.from_file

collection = ProductCollection.from_dir
puts collection.to_a