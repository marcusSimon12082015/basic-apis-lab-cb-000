class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    pry
    @resp = Faraday.get 'https://api.github.com/search/repositories'
  end
end
