class ProjectsController < ApplicationController
  http_basic_authenticate_with name: 'desafiovamoscontodo', password: 'XAHTJEAS23123%23', except: [:dashboard]

  def dashboard
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    if @project.valid?
      @project.save
      redirect_to root_path, notice: "Se guardó el proyecto correctamente"
    else 
      redirect_to root_path, notice: "No se pudo guardar el proyecto"
    end
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :begin, :end, :state)
  end
end
