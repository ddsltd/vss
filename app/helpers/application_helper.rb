module ApplicationHelper
  def title
    base_title ="VSS one of the best app"
    if @title.nil?
      base_title
    else
      "#{base_title}|#{@title}"  
    end
  end
end
