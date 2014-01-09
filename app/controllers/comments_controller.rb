class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  # before_filter :authenticate_user!, only: [:new, :create, :update, :destroy]
  authorize_resource
  def index
    @comments = Comment.all
  end

  def show
  end

  def new
    @comment = Comment.new
  end

  def edit
  end

  def create
    @comment = current_user.comments.new(comment_params)

    respond_to do |format|
      if @comment.save
        if @comment.commentable_type == 'Etalase'
          format.html { redirect_to etalase_path(id: @comment.commentable_id), notice: 'Comment was successfully created.' }
        elsif @comment.commentable_type == 'Tutorial'
          format.html { redirect_to tutorial_path(id: @comment.commentable_id), notice: 'Comment was successfully created.' }
        end 
      else
        format.html { render action: 'new' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @comment.update(comment_params)
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @comment.destroy
    respond_to do |format|
      format.html { redirect_to admin_comments_url }
      format.json { head :no_content }
    end
  end

  private
      def set_comment
      @comment = Comment.find(params[:id])
    end

    def comment_params
      params.require(:comment).permit(:content,:commentable_id, :commentable_type)
    end

end
