class ArticlesController < ApplicationController
    def show
        @article = Article.find(params[:id])
    end
    def index
        @articles = Article.all
    end
    def new
        @article = Article.new
    end
    def edit
      @article = Article.find(params[:id])
    end
    def create
       @article = Article.new(params.require(:article).permit(:title, :description))
      if @article.save
    #    redirect_to article_path(@article)
        redirect_to @article, notice: 'Article was successfully created.'
      else
        # render :new
        # redirect_to new_article_path, status: :unprocessable_entity, alert: @article.errors.full_messages
        flash[:alert] = @article.errors.full_messages
        redirect_to new_article_path
      end
    end
    def update
      @article = Article.find(params[:id])
      if @article.update(params.require(:article).permit(:title, :description))
        redirect_to @article, notice: 'Article was updated successfully.'
      else
        flash[:alert] = @article.errors.full_messages
        redirect_to edit_article_path
      end
    end
    def destroy
      # binding.pry
      @article = Article.find(params[:id])
      @article.destroy
      redirect_to articles_path
    end
end