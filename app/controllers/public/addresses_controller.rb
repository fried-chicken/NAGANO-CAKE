class Public::AddressesController < ApplicationController
  before_action :authenticate_customer!
  
  def index
    @addresses = current_customer.addresses
  	@address = Address.new
  end
  
  def create
    @address = Address.new(address_params)
	  @address.customer_id = current_customer.id
    @addresses = current_customer.addresses
      if @address.save
    redirect_to addresses_path
      end
  end

  def edit
    @address = Address.find(params[:id])
  end
  
  def destroy
    @address = Address.find(params[:id])
	  @address.destroy
	  redirect_to addresses_path
  end
	
  def update
    @address = Address.find(params[:id])
    if @address.update(address_params)
    redirect_to addresses_path
    else
      render "edit"
    end
  end
  
  
 private

  def address_params
  	params.require(:address).permit(:postal_code, :address, :name)
  end 
 
end
