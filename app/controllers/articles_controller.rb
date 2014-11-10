class ArticlesController < ApplicationController
  def index
  	@articles = Article.paginate(:per_page=>10,:page=> params[:page]).order("is_recommend desc")
  end

  def show
  end
end
