class ReviewsController < ApplicationController
  before_action :init_review, only: %i[new create]
  # before_action :init_booking, only: %i[new create]


  def index
    @reviews = Review.all
    # j'ai défini le index parce qu'il me donnait une erreur comme quoi index n'esxitait pas dans le conrolleur
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.article = @article
    #@review.user = current_user
    if @review.save!
      redirect_to articles_path
      # redirect_to article_path(@article)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def init_review
    @booking = Booking.find(params[:booking_id])
  end

  # def init_booking
  #   @booking = Booking.find(params[:booking_id])
  # end

  def review_params
    params.require(:review).permit(:rate_as_client, :about)
  end

end
