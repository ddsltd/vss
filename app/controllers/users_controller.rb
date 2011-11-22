class UsersController < ApplicationController
  def new
     @title = "Sign up"   
  end

  #def create   
   #  @user = User.new(params[:user])
  #   @user.save
   #  render 'sessions/emailConfirm'
   
   
   
  #end
  
  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
 
    respond_to do |format|
      if @user.save
        # Tell the UserMailer to send a welcome Email after save
        UserMailer.welcome_email(@user).deliver
       # render 'sessions/emailConfirm'
       format.html { redirect_to(@user, :notice => 'User was successfully created.') }
       format.json { render :json => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.json { render :json => @user.errors, :status => :unprocessable_entity }
      end
    end
  end  
 
 def show
    @user = User.find_by_id(params[:id])
 end
  
end
