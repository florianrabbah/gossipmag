class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

def show

@articles = article.find(params[:id])
end
def edit
  @articles = article.find(params[:id])
end

end
