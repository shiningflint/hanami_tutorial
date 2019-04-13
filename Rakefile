require 'rake'
require 'hanami/rake_tasks'

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
  task default: :spec
rescue LoadError
end

task generate_books: :environment do
  bookseed = [
    { title: 'Banana Book', author: 'Mister Fruit' },
    { title: 'Potato Book', author: 'Mister Veggie' },
    { title: 'Bacon Book', author: 'Mister Meaty' },
    { title: 'Apple Book', author: 'Mister Fruit' },
    { title: 'Orange Book', author: 'Mister Fruit' },
    { title: 'Salad Book', author: 'Mister Veggie' },
  ]
  bookrepo = BookRepository.new
  books = bookrepo.all
  if books.kind_of?(Array) && books.length > 0
    books.each_with_index do |book, index|
      bookrepo.delete(books[index].id)
    end
  end

  bookseed.each do |book|
    bookrepo.create(title: book[:title], author: book[:author])
  end
end
