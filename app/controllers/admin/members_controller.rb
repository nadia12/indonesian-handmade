class Admin::MembersController < AdminController
  def index
    @members = User.member.all
    @admins = User.admin.all
  end
end
