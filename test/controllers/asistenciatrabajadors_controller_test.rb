require 'test_helper'

class AsistenciatrabajadorsControllerTest < ActionController::TestCase
  setup do
    @asistenciatrabajador = asistenciatrabajadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asistenciatrabajadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asistenciatrabajador" do
    assert_difference('Asistenciatrabajador.count') do
      post :create, asistenciatrabajador: { entrada: @asistenciatrabajador.entrada, estado: @asistenciatrabajador.estado, horario_id: @asistenciatrabajador.horario_id, salida: @asistenciatrabajador.salida, trabajador_id: @asistenciatrabajador.trabajador_id }
    end

    assert_redirected_to asistenciatrabajador_path(assigns(:asistenciatrabajador))
  end

  test "should show asistenciatrabajador" do
    get :show, id: @asistenciatrabajador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asistenciatrabajador
    assert_response :success
  end

  test "should update asistenciatrabajador" do
    patch :update, id: @asistenciatrabajador, asistenciatrabajador: { entrada: @asistenciatrabajador.entrada, estado: @asistenciatrabajador.estado, horario_id: @asistenciatrabajador.horario_id, salida: @asistenciatrabajador.salida, trabajador_id: @asistenciatrabajador.trabajador_id }
    assert_redirected_to asistenciatrabajador_path(assigns(:asistenciatrabajador))
  end

  test "should destroy asistenciatrabajador" do
    assert_difference('Asistenciatrabajador.count', -1) do
      delete :destroy, id: @asistenciatrabajador
    end

    assert_redirected_to asistenciatrabajadors_path
  end
end
