class RepositoriesController < ApplicationController

  def search
    @resp = Faraday.get 'https://api.github.com/search/repositories' do |req|
      req.params['client_id'] = '57c52ba3af1436288e9d'
      req.params['client_secret'] = '6620a1071ba5ae6a4c9fbf908b472e9a119b9580'
      req.params['q'] = params[:query]
    end
    byebug
  end

  def github_search
  end
end
