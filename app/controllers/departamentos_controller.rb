class DepartamentosController < ApplicationController
  before_action :set_departamento, only: [:show, :edit, :update, :destroy]
  before_action :set_trabajador, only: [ :update, :edit]
  before_action :authenticate_user!
  respond_to :html

  def index
    @departamentos = Departamento.all
    respond_with(@departamentos)
  end

  def show
    @departamentotrabajador = Departamentotrabajador.new
    @trabajador = Trabajador.new
    respond_with(@departamento, @trabajador)
  end

  def new
    @departamento = Departamento.new
    @trabajador = Trabajador.new
    respond_with(@departamento)
  end

  def edit
  end

  def create
    @trabajador = Trabajador.find_by(dni:params[:trabajador][:dni])
    @departamento = Departamento.new(departamento_params)
    @trabajador.departamento = @departamento
    @departamento.save
    respond_with(@departamento)
  end

  def update
    @departamento.trabajador.departamento = nil
    @trabajador = Trabajador.find_by(dni:params[:trabajador][:dni])
    @departamento.update(departamento_params)
    @trabajador.departamento = @departamento
    respond_with(@departamento)
  end

  def destroy
    @departamento.destroy
    respond_with(@departamento)
  end

  private
    def set_trabajador
      @trabajador = Departamento.find(params[:id]).trabajador
    end
    def set_departamento
      @departamento = Departamento.find(params[:id])
    end

    def departamento_params
      params.require(:departamento).permit(:nombre, :descripcion, :trabajador_id)
    end
end
