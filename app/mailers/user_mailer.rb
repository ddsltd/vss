class UserMailer < ActionMailer::Base
  default :from => "mahesh.dsouza@gmail.com"
  
  def welcome_email(user)
     @user = user
     @url  = "http://localhost:3000/home"
     mail(:to => user.email, :subject => "Welcome to My Awesome Site")
   end
end
