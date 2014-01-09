class Admin::EtalasesController < AdminController
  def index
    @etalases = Etalase.order(:created_at).page params[:page]
  end
end
