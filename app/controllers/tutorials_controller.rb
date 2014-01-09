class TutorialsController < ApplicationController
  before_action :set_tutorial, only: [:show, :edit, :update, :destroy]
  before_action :select_category, only: [:select]

  authorize_resource
  def index
    @tutorials = Tutorial.order(:created_at).page params[:page]
  end

  def show
    @comment = @tutorial.comments.new
  end

  def new
    @tutorial = Tutorial.new
  end

  def edit
  end

  def create
    @tutorial = current_user.tutorials.new(tutorial_params)

    respond_to do |format|
      if @tutorial.save
        format.html { redirect_to @tutorial, notice: 'Tutorial was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tutorial }
      else
        format.html { render action: 'new' }
        format.json { render json: @tutorial.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    respond_to do |format|
      if @tutorial.update(tutorial_params)
        format.html { redirect_to @tutorial, notice: 'Tutorial was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tutorial.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    user_id = @tutorial.user_id
    @tutorial.destroy
    respond_to do |format|
      format.html { redirect_to show_up_tutorials_path user_id, notice: "Tutorial Has Been Destroy"  }
      format.json { head :no_content }
    end
  end

  def select
    
  end

  def search
    @search = params[:search]
    @tutorials = Tutorial.where("content LIKE ? ", "%#{params[:search]}%")
  end

  def newsearch
    @tutorials = []
    render 'search'  
  end

  private
    def set_tutorial
      @tutorial = Tutorial.find(params[:id] || current_user)
      @comments = @tutorial.comments
    end

    def tutorial_params
      params.require(:tutorial).permit(:content, :title, :picture, :category_id)
    end

    def select_category
      @tutorial = Tutorial.where(category_id: params[:category_id]).order(:created_at).page params[:page]
    end

end
