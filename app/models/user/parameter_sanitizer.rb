class User::ParameterSanitizer < Devise::ParameterSanitizer

  def sign_up
    default_params.permit(:name, :phone, :address, :email, :password)
  end

  def sign_in
    default_params.permit(:email, :password)
  end
  
end