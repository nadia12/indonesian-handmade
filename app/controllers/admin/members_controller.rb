class Admin::MembersController < AdminController
  def index
    @members = User.member.all
  end
end
