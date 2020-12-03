class ProjectsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: [:dashboard]

  def index
    
  end

  def new
    @project = Project.create(name: params[:project][:name], description: params[:project][:description], start_date: params[:project][:start_date], end_date: params[:project][:end_date], content: params[:project][:content])
    
  end

  def dashboard
    if params[:content].present?
      @projects = Project.where(content: params[:content])
    else
      @projects = Project.all
    end
  end
end
