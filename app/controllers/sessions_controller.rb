class SessionsController < ApplicationController
    def new
    end
    
  def create
  @admin = Admin.find_by_email(params[:session][:email])
  if @admin && @admin.authenticate(params[:session][:password])
    session[:admin_id] = @admin.id
    redirect_to '/home'
  else
    flash[:notice] = "Invalid login"
    redirect_to '/login'
  end 
  end

  def destroy 
  session[:admin_id] = nil 
  redirect_to '/' 
  end

    
end
