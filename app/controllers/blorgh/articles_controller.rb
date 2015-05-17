module Blorgh
  class ArticlesController < ApplicationController
    include Blorgh::Concerns::ArticlesController

    # POST /articles
    def create
      @article = Blorgh::Article.new(article_params)

      if @article.save
        redirect_to articles_url, notice: 'Article was successfully created.'
      else
        render :new
      end
    end
  end
end