class DepartamentotrabajadorsController < ApplicationController
  before_action :set_departamento
  before_action :set_trabajador, only:[:create]
  before_action :authenticate_user!
  respond_to :html

  def index
    @departamentotrabajadors = Departamentotrabajador.all
    respond_with(@departamentotrabajadors)
  end
  def new
    @departamentotrabajador = Departamentotrabajador.new
    @trabajador = Trabajador.new
    respond_with(@departamentotrabajador)
  end
  def create
    @departamentotrabajador = Departamentotrabajador.new()
    @departamentotrabajador.departamento = @departamento
    @departamentotrabajador.trabajador = @trabajador
    respond_to do |format|
      if  @departamentotrabajador.save
        format.html {redirect_to @departamentotrabajador.departamento, notice: 'Trabajador Agregador Satisfactoriamente'  }
        format.json {render :show, status: :created, location: @departamentotrabajador }
      else
        format.html {render :new}
        format.json {render json: @departamentotrabajador.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @departamentotrabajador.destroy
    respond_to do |format|
      format.html {redirect_to @departamento, notice: 'Trabajador Eliminado Satisfactoriamente'  }
      format.json {head :no_content }
    end
  end
  private
    def set_trabajador
      @trabajador = Trabajador.find_by(dni:params[:trabajador][:dni])
    end
    def set_departamento
      @departamento = Departamento.find(params[:departamento_id])
    end
    def set_departamentotrabajador
      @departamentotrabajador = Departamentotrabajador.find(params[:id])
    end
end
