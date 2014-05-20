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
      post :create, estudiante: { apellido,: @estudiante.apellido,, celular,: @estudiante.celular,, direccion,: @estudiante.direccion,, email,: @estudiante.email,, nacionalidad,Fnac: @estudiante.nacionalidad,Fnac, name,: @estudiante.name,, nro-documento,: @estudiante.nro-documento,, tel-casa,: @estudiante.tel-casa,, tel-trabajo,: @estudiante.tel-trabajo,, tipo-documento,: @estudiante.tipo-documento, }
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
    patch :update, id: @estudiante, estudiante: { apellido,: @estudiante.apellido,, celular,: @estudiante.celular,, direccion,: @estudiante.direccion,, email,: @estudiante.email,, nacionalidad,Fnac: @estudiante.nacionalidad,Fnac, name,: @estudiante.name,, nro-documento,: @estudiante.nro-documento,, tel-casa,: @estudiante.tel-casa,, tel-trabajo,: @estudiante.tel-trabajo,, tipo-documento,: @estudiante.tipo-documento, }
    assert_redirected_to estudiante_path(assigns(:estudiante))
  end

  test "should destroy estudiante" do
    assert_difference('Estudiante.count', -1) do
      delete :destroy, id: @estudiante
    end

    assert_redirected_to estudiantes_path
  end
end
