class BookingsController < ApplicationController
  before_action :set_article, only: %i[show, new, create]

  def new
    @booking = Booking.new

  end

  def create
    @booking = Booking.new(booking_params)
    @user = current_user

    @booking.article = @article
    # authorize @booking

     if @booking.save!
      # redirect_to  @bookings_path
    else
      render :new
    end
  end

# def list_renter
#     @bookings = Booking.all
# end

 private


  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :article_id)
  end
end

def set_article
  @article= Article.find(params[:article_id])
end
