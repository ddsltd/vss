class PagesController < ApplicationController
  def about
    @title = "About Page"
  end

  def help
    @title ="Home Page"
  end

  def contactus
    @title = "Contact Us"
  end

  def copyright
    @title = "Copyright"
  end



end
