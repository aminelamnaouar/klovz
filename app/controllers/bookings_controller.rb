class BookingsController < ApplicationController
  before_action :init_booking, only: %i[show]
  before_action :init_article, only: [:create, :new]

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.article = @article
    @booking.users_id = current_user.id
    if @booking.save! 
      # redirect_to :articles_path(@articles), notice: "Réservation pour votre #{@article}, faite avec succée !"
      redirect_to articles_path(@articles)
    else
      render :new
    end
  end

  def show
    
  end

  def edit
  end

  def update
  end




  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def init_booking
    @booking = Booking.find(params[:id])
  end

  def init_article
    @article = Article.find(params[:article_id])
  end
end
