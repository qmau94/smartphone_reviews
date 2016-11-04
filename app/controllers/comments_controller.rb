class CommentsController < ApplicationController
  before_action :logged_in_user?

  def create
    @review = Review.find params[:review_id]
    @comment = @review.comments.create(comment_params)
    @comment.user = current_user
    if @comment.save
      flash[:success] = "Your comment has been posted!"
      redirect_to review_path @review
    else
      flash[:danger] = "Your comment has been failed to post!"
    end
  end

  def destroy
    @review = Review.find params[:review_id]
    @comment = Comment.find params[:id]
    @comment.destroy
    flash[:success] = "Your comeent has been deleted!"
    redirect_to review_path @review
  end

  private
  def comment_params
    params.require(:comment).permit Comment::ATTRIBUTES_PARAMS
  end

end
