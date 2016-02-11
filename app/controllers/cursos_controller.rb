class CursosController < ApplicationController
  before_action :set_curso, only: [:show, :edit, :update, :destroy]
  before_action :set_aula, only: [:edit]
  before_action :set_trabajador, only: [:edit]
  before_action :authenticate_user!
  respond_to :html

  def index
    @cursos = Curso.all
    respond_with(@cursos)
  end
  
  def show
    respond_with(@curso)
  end

  def new
    @curso = Curso.new
    @trabajador = Trabajador.new
    @aula = Aula.new
    respond_with(@curso, @trabajador, @aula)
  end

  def edit
  end

  def create
    @trabajador = Trabajador.find_by(dni:params[:trabajador][:dni])
    @aula = Aula.find_by(numero:params[:aula][:numero])
    @curso = Curso.new(curso_params)
    @curso.trabajador = @trabajador
    @curso.aula = @aula
    @curso.save
    respond_with(@curso)
  end

  def update
    @trabajador = Trabajador.find_by(dni:params[:trabajador][:dni])
    @aula = Aula.find_by(numero:params[:aula][:numero])
    @curso.update(curso_params)
    @curso.trabajador = @trabajador
    @curso.aula = @aula
    respond_with(@curso)
  end

  def destroy
    @curso.destroy
    respond_with(@curso)
  end

  private
    def set_curso
      @curso = Curso.find(params[:id])
    end
    def set_trabajador
      @trabajador = Curso.find(params[:id]).trabajador
    end
    def set_aula
      @aula = Curso.find(params[:id]).aula
    end
    def curso_params
      params.require(:curso).permit(:codigo, :nombre, :capacidad, :cantidad_inscritos, :descripcion, :tipo, :semestre, :inicio, :fin)
    end
end
