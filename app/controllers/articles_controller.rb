class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  @articles = Article.all
  @rating = Rating.new
  @markers = @articles.geocoded.map do |article|
    {
      lat: article.latitude,
      lng: article.longitude,
      info_window: render_to_string(partial: "info_window", locals: {article: article}),
      image_url: helpers.asset_url("logo.png")
    }
    end
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    # @article.user = current_user
    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  def edit
    
  end

  def update

    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy!
    redirect_to articles_path
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :sexe, :size, :color, :brand, :price, :description, :types, :address, :image)
  end
end
