

  class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  # before_action :require_admin, only: [:index]
  
  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
   
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
   
    
    cusname = params[:name]
    cusroll = params[:rollno]
    cusmob = params[:mobnum]
    Customer.new(cusname => :name , cusroll => :rollNum, cusmob => :mobNum )
  
    
    

    # respond_to do |format|
    #   if @order.save
    #     format.html { redirect_to @order, notice: 'Order was successfully created.' }
    #     format.json { render :show, status: :created, location: @order }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @order.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
    cusname = params[:name]
    cusroll = params[:rollno]
    cusmob = params[:mobnum]
    cust =Customer.create({"name" => cusname , "rollNum" => cusroll ,"mobileNum" => cusmob }) .id
    if (params[:myid] != nil)
     var = params[:myid]["courseCode"]
    
  end
    getid = Order.create({ "bookIDs" => var ,"customerID" => cust , "status" => "Pending","quantities" => params[:quantities],"dateOrdered" => Date.today.to_s }).id
    
    @order = Order.find(getid)
    end

    # Never trust parameters from the scary internet, only allow the white list through.

end
