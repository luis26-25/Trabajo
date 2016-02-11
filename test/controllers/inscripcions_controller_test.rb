require 'test_helper'

class InscripcionsControllerTest < ActionController::TestCase
  setup do
    @inscripcion = inscripcions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inscripcions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inscripcion" do
    assert_difference('Inscripcion.count') do
      post :create, inscripcion: { curso_id: @inscripcion.curso_id, estudiante_id: @inscripcion.estudiante_id, fecha: @inscripcion.fecha }
    end

    assert_redirected_to inscripcion_path(assigns(:inscripcion))
  end

  test "should show inscripcion" do
    get :show, id: @inscripcion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inscripcion
    assert_response :success
  end

  test "should update inscripcion" do
    patch :update, id: @inscripcion, inscripcion: { curso_id: @inscripcion.curso_id, estudiante_id: @inscripcion.estudiante_id, fecha: @inscripcion.fecha }
    assert_redirected_to inscripcion_path(assigns(:inscripcion))
  end

  test "should destroy inscripcion" do
    assert_difference('Inscripcion.count', -1) do
      delete :destroy, id: @inscripcion
    end

    assert_redirected_to inscripcions_path
  end
end
