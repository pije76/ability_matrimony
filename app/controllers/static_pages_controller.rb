class StaticPagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
  end
  
  def help
  end

  def galleries
   @micropost = current_user.microposts.build if signed_in?
  
  end

  def partners
  end



  def poruthams
  end
end
