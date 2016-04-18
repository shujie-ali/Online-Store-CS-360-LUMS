require 'spec_helper'

describe BooksController,type: :controller do
  describe 'index page' do
    it 'should render index page' do
      get :index, "index"
      expect(response).to be_ok
    end
  end
  describe 'new book page' do
    it 'should render new book page' do
      get :new
      expect(response).to be_ok
    end
  end
  describe 'index page' do
    it 'should render index page' do
      get :index, "index"
      expect(response).to be_ok
    end
  end
  describe 'index page' do
    it 'should render index page' do
      get :index, "index"
      expect(response).to be_ok
    end
  end
  describe 'index page' do
    it 'should render index page' do
      get :index, "index"
      expect(response).to be_ok
    end
  end
end