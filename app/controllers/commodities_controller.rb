class CommoditiesController < ApplicationController 
  def new
    @commodity = Commodity.new
     render 'commodities/new'
  end
  
  def next
       @businesstype = Commodity.new
        render 'business_types/new'
  end
  

  def create
     @businesstype = Commodity.new
      render 'business_types/new'
      
      if (params[:commit] == "Save" )
          @commodity = Commodity.new(params[:commodity])    
          if @commodity.save                 
            @commodities = Commodity.all        
            render 'commodities/grid'
         end
      end
      
      if (params[:commit] == "Next" )
        @businesstype = Commodity.new
        render 'business_types/new'
      end
      
      if (params[:commit] == "New Commodity" )
        @commodity = Commodity.new
        render 'commodities/new'
      end 
  end
  
  def destroy
    Commodity.find(params[:id]).destroy
    flash[:success] = "Commodity destroyed."
    redirect_to commodities_path
  end
  
  def index
     @commodities = Commodity.all        
     render 'commodities/grid'
  end  
  
end
