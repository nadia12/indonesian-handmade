class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    show_up_profile_path resource
  end

  def after_update_path_for(resource)
<<<<<<< HEAD
    show_up_profile_path resource
=======
    show_up_profile_path 
>>>>>>> 690753f9ec1fa1d62a3a55cf31843837a41ea0d4
  end
end