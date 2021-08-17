class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  render @articles
end
