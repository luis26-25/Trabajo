require 'test_helper'

class DepartamentotrabajadorsControllerTest < ActionController::TestCase
  setup do
    @departamentotrabajador = departamentotrabajadors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:departamentotrabajadors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create departamentotrabajador" do
    assert_difference('Departamentotrabajador.count') do
      post :create, departamentotrabajador: { departamento_id: @departamentotrabajador.departamento_id, trabajador_id: @departamentotrabajador.trabajador_id }
    end

    assert_redirected_to departamentotrabajador_path(assigns(:departamentotrabajador))
  end

  test "should show departamentotrabajador" do
    get :show, id: @departamentotrabajador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @departamentotrabajador
    assert_response :success
  end

  test "should update departamentotrabajador" do
    patch :update, id: @departamentotrabajador, departamentotrabajador: { departamento_id: @departamentotrabajador.departamento_id, trabajador_id: @departamentotrabajador.trabajador_id }
    assert_redirected_to departamentotrabajador_path(assigns(:departamentotrabajador))
  end

  test "should destroy departamentotrabajador" do
    assert_difference('Departamentotrabajador.count', -1) do
      delete :destroy, id: @departamentotrabajador
    end

    assert_redirected_to departamentotrabajadors_path
  end
end
