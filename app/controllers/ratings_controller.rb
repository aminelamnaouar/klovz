class RatingsController < ApplicationController
    def new
        @rating = Rating.new
    end
    def create
        @rating = Rating.new(rating_params)
        if @rating.save!
            redirect_to root_path
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