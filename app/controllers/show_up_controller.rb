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

  def mycomments
    @myelatasecomments = current_user.comments.where commentable_type: 'Etalase'
    @mytutorialcomments = current_user.comments.where commentable_type: 'Tutorial'
  end

end
