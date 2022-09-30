class RatingsController < ApplicationController
    def new
        @rating = Rating.new
    end
    def create
        @article = Article.find(params[:article_id])
        @rating = Rating.new(rating_params)
        @rating.article = @article
        if @rating.save!
            redirect_to article_path(@article)
        else
            render :new
        end
    end

    private
    def set_rating
        @rating = Rating.find(params[:article_id])
    end

    def rating_params
        params.require(:rating).permit(:rate, :about)
    end
end
