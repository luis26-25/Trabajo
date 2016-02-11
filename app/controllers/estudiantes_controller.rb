class EstudiantesController < ApplicationController
  before_action :set_estudiante, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  respond_to :html

  def index
    @estudiantes = Estudiante.all
    respond_with(@estudiantes)
  end

  def show
    respond_with(@estudiante)
  end

  def new
    @estudiante = Estudiante.new
    respond_with(@estudiante)
  end

  def edit
  end

  def create
    @estudiante = Estudiante.new(estudiante_params)
    @estudiante.save
    respond_with(@estudiante)
  end

  def update
    @estudiante.update(estudiante_params)
    respond_with(@estudiante)
  end

  def destroy
    @estudiante.destroy
    respond_with(@estudiante)
  end

  private
    def set_estudiante
      @estudiante = Estudiante.find(params[:id])
    end

    def estudiante_params
      params.require(:estudiante).permit(:dni, :codigo_modular, :nombre, :paterno, :materno, :telefono, :direccion, :colegio_procedencia, :orden_merito, :lugar_nacimiento, :sexo, :promocion, :estado, :departamento_id, :user_id)
    end
end
