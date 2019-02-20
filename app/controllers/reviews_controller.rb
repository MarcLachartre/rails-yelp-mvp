class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(content: params[:content], address: params[:address])
    @review.save
  end
end
