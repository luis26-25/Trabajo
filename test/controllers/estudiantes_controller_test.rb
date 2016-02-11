require 'test_helper'

class EstudiantesControllerTest < ActionController::TestCase
  setup do
    @estudiante = estudiantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estudiantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estudiante" do
    assert_difference('Estudiante.count') do
      post :create, estudiante: { codigo_modular: @estudiante.codigo_modular, colegio_procedencia: @estudiante.colegio_procedencia, departamento_id: @estudiante.departamento_id, direccion: @estudiante.direccion, dni: @estudiante.dni, estado: @estudiante.estado, lugar_nacimiento: @estudiante.lugar_nacimiento, materno: @estudiante.materno, nombre: @estudiante.nombre, orden_merito: @estudiante.orden_merito, paterno: @estudiante.paterno, promocion: @estudiante.promocion, sexo: @estudiante.sexo, telefono: @estudiante.telefono, user_id: @estudiante.user_id }
    end

    assert_redirected_to estudiante_path(assigns(:estudiante))
  end

  test "should show estudiante" do
    get :show, id: @estudiante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estudiante
    assert_response :success
  end

  test "should update estudiante" do
    patch :update, id: @estudiante, estudiante: { codigo_modular: @estudiante.codigo_modular, colegio_procedencia: @estudiante.colegio_procedencia, departamento_id: @estudiante.departamento_id, direccion: @estudiante.direccion, dni: @estudiante.dni, estado: @estudiante.estado, lugar_nacimiento: @estudiante.lugar_nacimiento, materno: @estudiante.materno, nombre: @estudiante.nombre, orden_merito: @estudiante.orden_merito, paterno: @estudiante.paterno, promocion: @estudiante.promocion, sexo: @estudiante.sexo, telefono: @estudiante.telefono, user_id: @estudiante.user_id }
    assert_redirected_to estudiante_path(assigns(:estudiante))
  end

  test "should destroy estudiante" do
    assert_difference('Estudiante.count', -1) do
      delete :destroy, id: @estudiante
    end

    assert_redirected_to estudiantes_path
  end
end
