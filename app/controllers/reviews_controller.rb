class ReviewsController < ApplicationController
  before_action :set_review, only: %i[new create]

  # def index
  #   @reviews = Review.all
  #   #méthode à revoir
  # end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review = Article.find(params[:article_id])
    #@review.user = current_user
    if @review.save!
      redirect_to article_path(@review)
    else
      render :new
    end
  end

  private

  def set_review
    @article = Article.find(params[:article_id])
  end

  def review_params
    params.require(:review).permit(:rate_as_client, :about)
    # Ligne de code à revoir car il manque le rate_as_offer
  end
end

# D'après nos routes on devrait avoir aussi show mais j'ai un doute sur l'importance de cette méthode
#Cette  partie est à revoir
