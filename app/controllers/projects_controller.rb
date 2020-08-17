class ProjectsController < ApplicationController
  def dashboard
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
  end
end
