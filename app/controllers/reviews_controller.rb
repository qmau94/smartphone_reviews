class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find params[:id]
    @commentable = @review
  end

end
