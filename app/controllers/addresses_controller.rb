class AddressesController < ApplicationController
 
  
  def payment
     @address = Address.new
     render payment
  end
  
  def create
     @address = Address.new(params[:address])
      if @address.save
        if @address.ad_typ =="Payment"
           @address = Address.new
           @address.ad_typ = "Billing"
           render 'address/billing'
        elsif @address.ad_typ =="Billing"
             @address = Address.new
             @address.ad_typ == "Administrative"
             render 'address/administrative'
        elsif @address.ad_typ =="Administrative"
             @address = Address.new
              @address.ad_typ = "Ordering"
              render 'address/ordering'
        elsif @address.ad_typ ==  "Ordering"
             @commodities = Commodity.all
            
             render 'commodities/grid'
        end        
     end    
  end

end

  