class Admin::CommentsController < AdminController
  def index
    @etalase_comments = Comment.where commentable_type: 'Etalase'
    @tutorial_comments = Comment.where commentable_type: 'Tutorial'
  end
end
