require 'spec_helper'

describe SalesController,type: :controller do
  describe 'index page' do
    it 'should render index page' do
      get :index, "index"
      expect(response).to be_ok
    end
  end
  describe SalesController,type: :controller do
    before :each do 
        @sale_params={"customerID"=>"5","orderID"=>"2","bookID"=>"15","quantity"=>"1", "discount"=>"NO"}
        @fake_sale= double('sale1', @sale_params)
    end
  end
   describe "viewing the sales" do
        it 'should display the current sales' do
            get :index  
            response.should render_template(:index)
        end
    end
     describe 'new sale page' do
        it 'should render new sale page' do
            get :new
            expect(response).to be_ok
        end
    end
   end
  