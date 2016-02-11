require 'test_helper'

class AsistenciaalumnosControllerTest < ActionController::TestCase
  setup do
    @asistenciaalumno = asistenciaalumnos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asistenciaalumnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asistenciaalumno" do
    assert_difference('Asistenciaalumno.count') do
      post :create, asistenciaalumno: { estado: @asistenciaalumno.estado, estudiante_id: @asistenciaalumno.estudiante_id, fecha: @asistenciaalumno.fecha, horario_id: @asistenciaalumno.horario_id }
    end

    assert_redirected_to asistenciaalumno_path(assigns(:asistenciaalumno))
  end

  test "should show asistenciaalumno" do
    get :show, id: @asistenciaalumno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asistenciaalumno
    assert_response :success
  end

  test "should update asistenciaalumno" do
    patch :update, id: @asistenciaalumno, asistenciaalumno: { estado: @asistenciaalumno.estado, estudiante_id: @asistenciaalumno.estudiante_id, fecha: @asistenciaalumno.fecha, horario_id: @asistenciaalumno.horario_id }
    assert_redirected_to asistenciaalumno_path(assigns(:asistenciaalumno))
  end

  test "should destroy asistenciaalumno" do
    assert_difference('Asistenciaalumno.count', -1) do
      delete :destroy, id: @asistenciaalumno
    end

    assert_redirected_to asistenciaalumnos_path
  end
end
