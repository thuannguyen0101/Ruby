class CustomersController < ApplicationController


  # GET /customers
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end
  def edit
    @customer = Customer.find(params[:id])
  end



  def create
    @customers = Customer.new(params.permit(:name, :email, :phone))
    if @customers.save
      redirect_to customers_path
    else
      render :new
    end
  end
  def update
    @customers = Customer.find(params[:id])
    if @customers.update(params.permit(:name, :email, :phone))
      redirect_to customers_path
    else
      render :edit
    end
  end
end
