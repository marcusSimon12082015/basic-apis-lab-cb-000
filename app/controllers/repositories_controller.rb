class RepositoriesController < ApplicationController

  def search
    @resp = Faraday.get 'https://api.github.com/search/repositories',{:g => params[:query]}
    byebug
  end

  def github_search
  end
end
