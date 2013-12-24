class User::ParameterSanitizer < Devise::ParameterSanitizer

  def sign_up
    default_params.permit(:name, :phone, :address, :email, :password, :avatar)
  end

  def sign_in
    default_params.permit(:email, :password)
  end

  def account_update
    default_params.permit(:name, :phone, :address, :email, :password, :current_password, :avatar)
  end
  
end