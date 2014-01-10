class ShowUpController < ApplicationController
  layout 'show_up'

  def profile
    @user = User.friendly.find params[:id]
  end

  def tutorials
    @tutorials = User.friendly.find(params[:id]).tutorials
  end
  
  def etalases
    @etalases = User.friendly.find(params[:id]).etalases
  end

  def comments
    @elatasecomments = User.friendly.find(params[:id]).comments.where commentable_type: 'Etalase'
    @tutorialcomments = User.friendly.find(params[:id]).comments.where commentable_type: 'Tutorial'
  end

end
