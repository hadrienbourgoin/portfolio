class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def get_api
    url = "https://noteme-ade8e882245f.herokuapp.com/api/v1/#{params[:query]}"
    response = RestClient.get(url)
    render json: response
  end
end
