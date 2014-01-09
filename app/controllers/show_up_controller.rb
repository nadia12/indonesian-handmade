class ShowUpController < ApplicationController
  layout 'show_up'

  def profile
    @user = User.find params[:id]
  end

  def tutorials
    @tutorials = User.find(params[:id]).tutorials
  end
  
  def etalases
    @etalases = User.find(params[:id]).etalases
  end

  def comments
    @elatasecomments = User.find(params[:id]).comments.where commentable_type: 'Etalase'
    @tutorialcomments = User.find(params[:id]).comments.where commentable_type: 'Tutorial'
  end

end
