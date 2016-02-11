class AsistenciatrabajadorsController < ApplicationController
  before_action :set_asistenciatrabajador, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  respond_to :html

  def index
    @asistenciatrabajadors = Asistenciatrabajador.all
    respond_with(@asistenciatrabajadors)
  end

  def show
    respond_with(@asistenciatrabajador)
  end

  def new
    @asistenciatrabajador = Asistenciatrabajador.new
    respond_with(@asistenciatrabajador)
  end

  def edit
  end

  def create
    @asistenciatrabajador = Asistenciatrabajador.new(asistenciatrabajador_params)
    @asistenciatrabajador.save
    respond_with(@asistenciatrabajador)
  end

  def update
    @asistenciatrabajador.update(asistenciatrabajador_params)
    respond_with(@asistenciatrabajador)
  end

  def destroy
    @asistenciatrabajador.destroy
    respond_with(@asistenciatrabajador)
  end

  private
    def set_asistenciatrabajador
      @asistenciatrabajador = Asistenciatrabajador.find(params[:id])
    end

    def asistenciatrabajador_params
      params.require(:asistenciatrabajador).permit(:entrada, :salida, :estado, :trabajador_id, :horario_id)
    end
end
