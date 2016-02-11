class InscripcionsController < ApplicationController
  before_action :set_inscripcion, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  respond_to :html

  def index
    @inscripcions = Inscripcion.all
    respond_with(@inscripcions)
  end

  def show
    respond_with(@inscripcion)
  end

  def new
    @inscripcion = Inscripcion.new
    respond_with(@inscripcion)
  end

  def edit
  end

  def create
    @inscripcion = Inscripcion.new(inscripcion_params)
    @inscripcion.save
    respond_with(@inscripcion)
  end

  def update
    @inscripcion.update(inscripcion_params)
    respond_with(@inscripcion)
  end

  def destroy
    @inscripcion.destroy
    respond_with(@inscripcion)
  end

  private
    def set_inscripcion
      @inscripcion = Inscripcion.find(params[:id])
    end

    def inscripcion_params
      params.require(:inscripcion).permit(:fecha, :estudiante_id, :curso_id)
    end
end
