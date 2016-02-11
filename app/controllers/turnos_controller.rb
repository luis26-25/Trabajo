class TurnosController < ApplicationController
  before_action :set_turno, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  respond_to :html

  def index
    @turnos = Turno.all
    respond_with(@turnos)
  end

  def show
    respond_with(@turno)
  end

  def new
    @turno = Turno.new
    respond_with(@turno)
  end

  def edit
  end

  def create
    @turno = Turno.new(turno_params)
    @turno.save
    respond_with(@turno)
  end

  def update
    @turno.update(turno_params)
    respond_with(@turno)
  end

  def destroy
    @turno.destroy
    respond_with(@turno)
  end

  private
    def set_turno
      @turno = Turno.find(params[:id])
    end

    def turno_params
      params.require(:turno).permit(:descripcion, :hora_inicio, :hora_fin)
    end
end
