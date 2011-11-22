class VendorsController < ApplicationController
  def new
    @vendor = Vendor.new
  end
  
  def create
    @vendor = Vendor.new(params[:vendor])
    if @vendor.save
      #Create a new  Address
    #  @address = Address.new
     # @address.ad_typ="Payment"
      redirect_to '/address/payment' 
    end
  end  

end
