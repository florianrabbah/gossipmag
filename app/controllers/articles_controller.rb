class ArticlesController < ApplicationController

  def index
    @article = Article.all
  end

def show

@article = Article.find(params[:id])
end
def edit
  @article = Article.find(params[:id])
end


def update
  @article = Article.find(params[:id])
  @article.update(article_params)
  redirect_to articles_path
end

end
