require 'test_helper'

class TrabalhadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trabalhador = trabalhadors(:one)
  end

  test "should get index" do
    get trabalhadors_url
    assert_response :success
  end

  test "should get new" do
    get new_trabalhador_url
    assert_response :success
  end

  test "should create trabalhador" do
    assert_difference('Trabalhador.count') do
      post trabalhadors_url, params: { trabalhador: { cidade: @trabalhador.cidade, civil: @trabalhador.civil, estado: @trabalhador.estado, job_role: @trabalhador.job_role, matricula: @trabalhador.matricula, nascimento: @trabalhador.nascimento, nome: @trabalhador.nome, sexo: @trabalhador.sexo, workspace: @trabalhador.workspace } }
    end

    assert_redirected_to trabalhador_url(Trabalhador.last)
  end

  test "should show trabalhador" do
    get trabalhador_url(@trabalhador)
    assert_response :success
  end

  test "should get edit" do
    get edit_trabalhador_url(@trabalhador)
    assert_response :success
  end

  test "should update trabalhador" do
    patch trabalhador_url(@trabalhador), params: { trabalhador: { cidade: @trabalhador.cidade, civil: @trabalhador.civil, estado: @trabalhador.estado, job_role: @trabalhador.job_role, matricula: @trabalhador.matricula, nascimento: @trabalhador.nascimento, nome: @trabalhador.nome, sexo: @trabalhador.sexo, workspace: @trabalhador.workspace } }
    assert_redirected_to trabalhador_url(@trabalhador)
  end

  test "should destroy trabalhador" do
    assert_difference('Trabalhador.count', -1) do
      delete trabalhador_url(@trabalhador)
    end

    assert_redirected_to trabalhadors_url
  end
end
