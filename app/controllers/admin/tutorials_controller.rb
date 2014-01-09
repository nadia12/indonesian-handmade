class Admin::TutorialsController < AdminController
  def index
    @tutorials = Tutorial.all
  end
end
