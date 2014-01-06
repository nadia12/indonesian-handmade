class ShowUpController < ApplicationController
  layout 'show_up'

  def profile
    @user = current_user
  end

  def mytutorials
    @mytutorials = current_user.tutorials
  end
  
  def myetalases
    @myetalases = current_user.etalases
  end

end
