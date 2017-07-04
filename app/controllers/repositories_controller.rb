class RepositoriesController < ApplicationController
  def index
    @repos_array = ghservice.get_repos
  end

  def create
    ghservice.create_repo(params[:name])
    redirect_to '/'
  end
end
