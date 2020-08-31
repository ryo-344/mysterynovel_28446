class ReviewsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @reviews = Review.all
  end

  def new 
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :author, :genre_id, :content, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end