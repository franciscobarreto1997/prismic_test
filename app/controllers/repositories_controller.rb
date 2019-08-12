class RepositoriesController < ApplicationController
  def index
    @repositories = Repository.all
    @repo_bytes = Repository.group(:http_host).sum(:bytes)
  end

  def show
  end
end
