class HomeController < ApplicationController
  def index
    @tutorials = Tutorial.order(:created_at).page params[:page]
    @etalases = Etalase.order(:created_at).page params[:page]
  end
end
