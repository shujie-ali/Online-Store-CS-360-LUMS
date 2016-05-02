class SalesController < ApplicationController
  before_action :set_sale, only: [:show, :edit, :update, :destroy]
  #before_action :require_admin, only: [:index, :show, :new, :edit, :create, :update, :destroy]

  @selectedRatings = []
  # GET /sales
  # GET /sales.json
  def index
    @sales = Sale.all
  end

def returnS
end
  # GET /sales/1
  # GET /sales/1.json
  def show
  end
  
  def report
      @sales = Sale.all
      @allBooks = []
      @sales.each do |sale|
        @allBooks.push(Book.find_by(sale.bookID))
      end
  end
  # GET /sales/new
  def new
    @sale = Sale.new
  end

  # GET /sales/1/edit
  def edit
  end

  # POST /sales
  # POST /sales.json
  
  def create
   if  ((params[:myid]["courseCode"] == "" || params[:myid]["instructor"] == "") && params[:orderid] == "") 
     flash[:notice] = "Enter Course Code and Instructor OR Order ID"
    redirect_to new_sale_path
    return
  else
    if (params[:orderid] != "" && !Order.exists?(id: params[:orderid]))
      flash[:notice] = "Enter Valid Order ID"
    redirect_to new_sale_path
      return
    elsif (params[:orderid] != "")
      order = Order.find(params[:orderid])
      Sale.create({"orderID" => order.id, "customerID" => order.customerID, "bookID" => order.bookIDs})
    end
  end
  if (params[:myid]["courseCode"] != "")
    if (params[:myid]["courseCode"] != params[:myid]["instructor"])
      flash[:notice] = "Instructor and Course Does Not Match!"
    redirect_to new_sale_path
      return
    else 
      Sale.create({"bookID" => params[:myid]["courseCode"]})
    end
  end
   redirect_to sales_path
   return
  end

  # PATCH/PUT /sales/1
  # PATCH/PUT /sales/1.json
  def update
    respond_to do |format|
      if @sale.update(sale_params)
        format.html { redirect_to @sale, notice: 'Sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @sale }
      else
        format.html { render :edit }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sales/1
  # DELETE /sales/1.json
  def destroy
    @sale.destroy
    respond_to do |format|
      format.html { redirect_to sales_url, notice: 'Sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sale
      @sale = Sale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sale_params
      params.require(:sale).permit(:customerID, :orderID, :bookID, :quantity, :discount)
    end

end
