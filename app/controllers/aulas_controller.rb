class AulasController < ApplicationController
  before_action :set_aula, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  respond_to :html

  def index
    @aulas = Aula.all
    respond_with(@aulas)
  end

  def show
    respond_with(@aula)
  end

  def new
    @aula = Aula.new
    respond_with(@aula)
  end

  def edit
  end

  def create
    @aula = Aula.new(aula_params)
    @aula.save
    respond_with(@aula)
  end

  def update
    @aula.update(aula_params)
    respond_with(@aula)
  end

  def destroy
    @aula.destroy
    respond_with(@aula)
  end

  private
    def set_aula
      @aula = Aula.find(params[:id])
    end

    def aula_params
      params.require(:aula).permit(:numero)
    end
end
