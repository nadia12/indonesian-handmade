layout "admin"
  before_filter :authenticate_user!
  def admin
    @admins = User.admin
  end
  def member
    @members = User.member
  end
end