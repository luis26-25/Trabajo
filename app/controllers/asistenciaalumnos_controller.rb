class AsistenciaalumnosController < ApplicationController
  before_action :authenticate_user!
  before_action :set_asistenciaalumno, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @asistenciaalumnos = Asistenciaalumno.all
    respond_with(@asistenciaalumnos)
  end

  def show
    respond_with(@asistenciaalumno)
  end

  def new
    @asistenciaalumno = Asistenciaalumno.new
    respond_with(@asistenciaalumno)
  end

  def edit
  end

  def create
    @asistenciaalumno = Asistenciaalumno.new(asistenciaalumno_params)
    @asistenciaalumno.save
    respond_with(@asistenciaalumno)
  end

  def update
    @asistenciaalumno.update(asistenciaalumno_params)
    respond_with(@asistenciaalumno)
  end

  def destroy
    @asistenciaalumno.destroy
    respond_with(@asistenciaalumno)
  end

  private
    def set_asistenciaalumno
      @asistenciaalumno = Asistenciaalumno.find(params[:id])
    end

    def asistenciaalumno_params
      params.require(:asistenciaalumno).permit(:fecha, :estado, :estudiante_id, :horario_id)
    end
end
