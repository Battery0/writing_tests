require 'library'

describe Library do
  it 'can find a specific book' do
    new_library_object = Library.new

    book = 'Learn Ruby The Hard Way'

    expect(new_library_object.find_book(book)).to eq({:title=>"Learn Ruby The Hard Way", :author=>"Zed Shaw", :subject=>"Ruby"})

  end

  it 'can add a new book' do
  end

  it 'can remove a book' do
  end

  it 'can list all the books on a specific subject' do
  end
end
