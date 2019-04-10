RSpec.describe Book, type: :entity do
  it 'can be initialized with attributes' do
    book = Book.new(title: 'The Banana Book', author: 'Mister Banana')
    expect(book.title).to eq 'The Banana Book'
  end
end
