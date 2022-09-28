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
    @review.article = Article.find(params[:article_id])
    #@review.user = current_user
    if @review.save!
      redirect_to article_path(@review.article)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rate_as_client, :about)
  end
end

# D'après nos routes on devrait avoir aussi show mais j'ai un doute sur l'importance de cette méthode
#Cette  partie est à revoir
