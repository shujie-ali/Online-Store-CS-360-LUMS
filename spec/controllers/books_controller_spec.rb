require 'spec_helper'

describe BooksController,type: :controller do
  describe 'index page' do
    it 'should render index page' do
      get :index, "index"
      expect(response).to be_ok
    end
  end
  describe 'searching books' do
    it 'should return books with searched title when they exist' do
      book=FactoryGirl.create(:book)
      Book.should_receive(:search).with(book.bookTitle)
      get :index, {:search=>book.bookTitle}
      response.should render_template :index
    end
    it 'should return no books with searched title when they dont exist' do
      Book.should_receive(:search).with('fake book').and_return(nil)
      get :index, {:search=>'fake book'}
      response.should render_template :index
    end
  end
end