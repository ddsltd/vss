class SessionsController < ApplicationController
  def new
    @title = "Sign in"
  end
  
  def create
    if (params[:commit] == "Accept" )
       @user = User.new  
       render 'users/new'      
    end 
    
    if (params[:commit] == "Cancel" )      
      render "new"
    end
    
    if (params[:commit]=="Sign in")
      
      user = User.authenticate(params[:session][:email],
                                  params[:session][:password])
      if user.blank?
        flash.now[:error] = "Invalid email/password combination."
        @title = "Sign in" 
        render 'new'                                  
      else
        @title = "Vendor"  
        @vendor = Vendor.new
        render "vendors/new"
      end    
    end 
   
  end  

end
