require 'spec_helper'

describe RequestsController,type: :controller do
    before :each do 
        @current_admin=FactoryGirl.create(:admin)
        session[:admin_id]=@current_admin.id
    end
    
  describe 'index page' do
    it 'should render index page' do
      get :index, "index"
      expect(response).to be_ok
    end
  end
   describe "viewing the requests" do
        it 'should display all the requests' do
            get :index  
            response.should render_template(:index)
        end
    end
     describe 'new request page' do
        it 'should render new request page' do
            get :new
            expect(response).to be_ok
        end
        
    end
    
    describe 'show request page' do
        it 'should display the selected request' do
            request=FactoryGirl.create(:request)
           get :show, {'id'=>request.id}
           response.should render_template(:show)
        end
    end
    
    describe 'edit request page' do
       it 'should show edit reqest page' do
           request=FactoryGirl.create(:request)
           get :edit, {'id'=>request.id}
           response.should render_template(:edit)
       end
    end
    
    describe 'deleting the request' do
        it 'should delete the request' do
            request=FactoryGirl.create(:request)
           delete :destroy, {'id'=>request.id}
        end
    end
    
   end
  