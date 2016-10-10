class ArticlesController < ApplicationController
#left off on 5.9

  def index
   @articles = Article.all
  end

  def show
     @article = Article.find(params[:id])
   end

  def new
  end

  def create
    # render plain: params[:article].inspect

    @article = Article.new(article_params)

    @article.save
    redirect_to @article

    # @article = Article.new(params.require(:article).permit(:title, :text))

  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end

end
