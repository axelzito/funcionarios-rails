require 'test_helper'

class ContatosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contato = contatos(:one)
  end

  test "should get index" do
    get contatos_url
    assert_response :success
  end

  test "should get new" do
    get new_contato_url
    assert_response :success
  end

  test "should create contato" do
    assert_difference('Contato.count') do
      post contatos_url, params: { contato: { civil_id: @contato.civil_id, estado_id: @contato.estado_id, job_id: @contato.job_id, matricula: @contato.matricula, municipio: @contato.municipio, nascimento: @contato.nascimento, nome: @contato.nome, sexo_id: @contato.sexo_id, workspace_id: @contato.workspace_id } }
    end

    assert_redirected_to contato_url(Contato.last)
  end

  test "should show contato" do
    get contato_url(@contato)
    assert_response :success
  end

  test "should get edit" do
    get edit_contato_url(@contato)
    assert_response :success
  end

  test "should update contato" do
    patch contato_url(@contato), params: { contato: { civil_id: @contato.civil_id, estado_id: @contato.estado_id, job_id: @contato.job_id, matricula: @contato.matricula, municipio: @contato.municipio, nascimento: @contato.nascimento, nome: @contato.nome, sexo_id: @contato.sexo_id, workspace_id: @contato.workspace_id } }
    assert_redirected_to contato_url(@contato)
  end

  test "should destroy contato" do
    assert_difference('Contato.count', -1) do
      delete contato_url(@contato)
    end

    assert_redirected_to contatos_url
  end
end
