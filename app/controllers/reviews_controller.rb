class ReviewsController < ApplicationController

  # def index
  #   @reviews = Review.all
  #   #méthode à revoir
  # end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking = Booking.find(params[:booking_id])
    #@review.user = current_user
    if @review.save?
      redirect_to booking_path(@review.booking)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rate_as_client, :about)
    # Ligne de code à revoir car il manque le rate_as_offer
  end
end

# D'après nos routes on devrait avoir aussi show mais j'ai un doute sur l'importance de cette méthode
#Cette  partie est à revoir
