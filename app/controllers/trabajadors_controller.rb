class TrabajadorsController < ApplicationController
  before_action :set_trabajador, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  respond_to :html

  def index
    @trabajadors = Trabajador.all
    respond_with(@trabajadors)
  end

  def show
    respond_with(@trabajador)
  end

  def new
    @trabajador = Trabajador.new
    @departamento = Departamento.new
    respond_with(@trabajador, @departamento)
  end

  def edit
  end

  def create
    @trabajador = Trabajador.new(trabajador_params)
    @trabajador.save
    respond_with(@trabajador)
  end

  def update
    @trabajador.update(trabajador_params)
    respond_with(@trabajador)
  end

  def destroy
    @trabajador.destroy
    respond_with(@trabajador)
  end

  private
    def set_trabajador
      @trabajador = Trabajador.find(params[:id])
    end

    def trabajador_params
      params.require(:trabajador).permit(:dni, :codigo_modular, :paterno, :materno, :nombre, :telefono, :especialidad, :grado, :user_id)
    end
end
