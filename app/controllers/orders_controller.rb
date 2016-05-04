

  class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  # before_action :require_admin, only: [:index]

def returnB 
  # @order = Order.find()
  # @order.destroy
  # respond_to do |format|
    # format.html { redirect_to orders_url, notice: 'Order was destroyed.' }
    # format.json { head :no_content }
  # end
end
  
def tracker
  logger.debug(params)
  @order = Order.find_by_id(params[:t_id].to_i)
  if @order == nil
    flash[:notice] = "Invalid Order ID"
    redirect_to :home_index
  else
    render :show
  end
end

def submit
  format.html { redirect_to books_url, notice: 'Order was successfully destroyed.' }
end
  
  skip_before_filter :verify_authenticity_token
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
  if request.original_url[request.original_url.length-1] == 'w'
    flash[:bid] = -1
    @order = Order.new
  else
    arr = request.original_url.split('/')
    flash[:bid] = arr[arr.length-1].to_i
     @order = Order.new 
   end
   
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    cusname = params[:name]
    cusroll = params[:rollnum].to_i
    cusmob = params[:mobnum]
    b = 0;
    if (cusname != "" && cusroll != "" && cusmob != "")
      cust=Customer.find_by_rollNum(cusroll)
    if cust==nil
      cust = Customer.create({"name" => cusname , "rollNum" => cusroll ,"mobileNum" => cusmob }) .id
    else 
      cust = cust[:id]
    end
  else 
    b = 1;
    flash[:notice] = "Enter Full Customer Data";
  end
  
  if (b == 0 && flash[:bid] == -1)
    if (b == 0 && params[:myid]["courseCode"] != "" && params[:myid]["instructor"] != "") 
 
     var = params[:myid]["courseCode"]
     var1 = params[:myid]["instructor"]
     if (var == var1) 
         Order.create!({ "bookIDs" => var ,"customerID" => cust , "status" => "Pending","quantities" => params[:quantities],"dateOrdered" => Date.today.to_s })
     else
         flash[:notice] = "Book and Instructor do not match"
    end
    elsif (b == 0)
      flash[:notice] = "Enter Book Title and Instructor";
  end
  else
    Order.create!({ "bookIDs" => flash[:bid] ,"customerID" => cust , "status" => "Pending","quantities" => params[:quantities],"dateOrdered" => Date.today.to_s })

  end
    redirect_to orders_path
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

    @order = Order.find(params[:id])
    end
    def order_params
      params.require(:order).permit(:bookIDs, :customerID, :status, :dateOrdered, :quantities, :rollNum)
    end
    # Never trust parameters from the scary internet, only allow the white list through.

end
