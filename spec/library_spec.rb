require 'library'

describe Library do
  it 'can find a specific book' do
    book = 'Learn Ruby The Hard Way'
    expect(subject.find_book(book)).to eq({:title=>"Learn Ruby The Hard Way", :author=>"Zed Shaw", :subject=>"Ruby"})
  end

  it 'can add a new book' do
    new_book = {title: 'Random Book', author: 'Someone', subject: 'Something'}
    subject.add_book(new_book)
    expect(subject.find_book('Random Book')).to eq(new_book)
  end

  it 'can remove a book' do
    deleted_book = 'The Well Grounded Rubyist'
    subject.remove_book(deleted_book)
    expect(subject.find_book(deleted_book)).to be_nil
  end

  it 'can list all the books on a specific subject' do
    books_by_subject = [
      {title: 'Learn Ruby The Hard Way', author: 'Zed Shaw', subject: 'Ruby'},
      {title: 'The Well Grounded Rubyist', author: 'Sandi Metz', subject: 'Ruby'}
    ]
    
    expect(subject.all_books_by_subject('Ruby')).to match(books_by_subject)
  end
end
