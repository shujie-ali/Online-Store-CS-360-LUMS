class PurchasesController < ApplicationController
  before_action :set_purchase, only: [:show, :edit, :update, :destroy]
  # before_action :require_admin, only: [:index, :show, :new, :edit, :create, :update, :destroy]
  # GET /purchases
  # GET /purchases.json
  def index
    @purchases = Purchase.all
  end

  # GET /purchases/1
  # GET /purchases/1.json
  def show
  end
  def report
      @sales = Sale.all
      @allBooks = []
      @sales.each do |sale|
        @allBooks.push(Book.find_by(sale.bookID))
      end
  end
  # GET /purchases/new
  def new
    @purchase = Purchase.new
  end
  def create
   if  (params[:myid]["courseCode"] == "" || params[:myid]["instructor"] == "" || params[:quantity] == "") 
     flash[:notice] = "Enter Course Code, Instructor and Quantity"
     redirect_to new_purchase_path
    return
    elsif (params[:myid]["courseCode"] != params[:myid]["instructor"])
      flash[:notice] = "Instructor and Course Does Not Match!"
      redirect_to new_purchase_path
      return
    else 
      Purchase.create({"bookID" => params[:myid]["courseCode"], "quantity" => params[:quantity]})
   end
   redirect_to purchases_path
   return
  end
  
  # GET /purchases/1/edit
  def edit
  end

  # POST /purchases
  # POST /purchases.json


  # PATCH/PUT /purchases/1
  # PATCH/PUT /purchases/1.json
  def update
    respond_to do |format|
      if @purchase.update(purchase_params)
        format.html { redirect_to @purchase, notice: 'Purchase was successfully updated.' }
        format.json { render :show, status: :ok, location: @purchase }
      else
        format.html { render :edit }
        format.json { render json: @purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchases/1
  # DELETE /purchases/1.json
  def destroy
    @purchase.destroy
    respond_to do |format|
      format.html { redirect_to purchases_url, notice: 'Purchase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase
      @purchase = Purchase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def purchase_params
      params.require(:purchase).permit(:bookID, :quantity)
    end
end
