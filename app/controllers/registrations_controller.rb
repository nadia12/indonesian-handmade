class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    show_up_profile_path resource
  end

  def after_update_path_for(resource)
    show_up_profile_path 
  end
end