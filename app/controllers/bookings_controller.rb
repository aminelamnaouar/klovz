class BookingsController < ApplicationController

  def new
    @booking = Booking.new
    #@booking.build_user
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.article = Article.find(params[:article_id])
    if @booking.save
      redirect_to article_path(@booking.article)
    else
      render :new
    end
  end

  private


  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :article_id)
  end
end
