require 'spec_helper'
require 'rails_helper'

describe OrdersController,type: :controller do
    before :each do 
        @order_params={"name"=>"shahroze", "rollnum"=>16110203, "mobnum"=>"03214990028", "myid"=>{"courseCode"=>"1", "instructor"=>"1"}, "quantities"=>"1"}
        @fake_order= double('customer1', @order_params)
    end
    
    describe "viewing the orders" do
        it 'should display the current order' do
            get :index  
            response.should render_template(:index)
        end
    end
    describe 'new order page' do
        it 'should render new order page' do
            get :new
            expect(response).to be_ok
        end
    end
    describe 'Creating customer from order information' do 
         it 'should create a new customer if information doesnt not exist in database' do
            Customer.should_receive(:find_by_rollNum).with(@fake_order.rollnum).and_return(nil)
            post :create, @order_params
         end
        it 'should recoginze an existing customer if information exists' do
            customer=FactoryGirl.create(:customer)
            Customer.should_receive(:find_by_rollNum).with(customer.rollNum).and_return(customer)
            post :create, @order_params
        end
     end
    
    describe 'Placing an order' do
        it 'should create a new order with customer and order information' do
            book=FactoryGirl.create(:book)
            Order.should_receive(:create!)
            post :create, @order_params
            response.should redirect_to(orders_path)
        end
    end
    
    describe 'tracking a user' do
        it 'should show the order information with a valid tracking number' do
            order=FactoryGirl.create(:order)
            Order.should_receive(:find_by_id).with(order.id)
            post :tracker, {:t_id=>order.id}
        end
        it 'should redirect to homepage with invalid tracking number' do
            Order.should_receive(:find_by_id).with(-1)
            post :tracker, {:t_id=>-1}
            response.should redirect_to '/home'
        end
    end
end