class AdminController < ApplicationController
  layout 'admin'
  before_filter :authenticate_user!, :admin?
  
  def admin?
    redirect_to admin_root_path unless current_user.role == "admin"
  end

end
