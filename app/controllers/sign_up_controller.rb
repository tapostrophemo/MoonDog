class SignUpController < ApplicationController

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(params[:customer])
    if @customer.save
      flash[:notice] = "Registration Successful"
      redirect_to :controller => "main", :action => "index" 
    end
  end
  
end
