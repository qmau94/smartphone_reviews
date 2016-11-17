class CommentsController < ApplicationController
  before_action :get_commentable
  before_action :logged_in_user?

  def new
    @comment = @commentable.comments.build
  end

  def create
    @comment = @commentable.comments.new(comment_params)
    @comment.user = current_user
    if @comment.save
      flash[:success] = "Your comment has been posted!"
      redirect_to polymorphic_path @commentable
    else
      flash[:danger] = "Your comment has been failed to post!"
    end
  end

  def destroy
    @review = Review.find params[:review_id]
    @comment = Comment.find params[:id]
    @comment.destroy
    flash[:success] = "Your comment has been deleted!"
    redirect_to review_path @review
  end

  private
  def comment_params
    params.require(:comment).permit Comment::ATTRIBUTES_PARAMS
  end

  def get_commentable
    @commentable = Review.find params[:review_id] if params[:review_id]
    @commentable = Comment.find params[:comment_id] if params[:comment_id]
  end

end
