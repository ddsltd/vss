class ServicesController < ApplicationController
  def new
  end
  
  def create
      @service = Service.new(params[:service])
     if @service.save  
       @commodity = Commodity.new
       render 'commodities/new' 
     end
  end

end
