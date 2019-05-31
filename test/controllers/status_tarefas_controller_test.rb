require 'test_helper'

class StatusTarefasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @status_tarefa = status_tarefas(:one)
  end

  test "should get index" do
    get status_tarefas_url, as: :json
    assert_response :success
  end

  test "should create status_tarefa" do
    assert_difference('StatusTarefa.count') do
      post status_tarefas_url, params: { status_tarefa: { codigo: @status_tarefa.codigo, nome: @status_tarefa.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show status_tarefa" do
    get status_tarefa_url(@status_tarefa), as: :json
    assert_response :success
  end

  test "should update status_tarefa" do
    patch status_tarefa_url(@status_tarefa), params: { status_tarefa: { codigo: @status_tarefa.codigo, nome: @status_tarefa.nome } }, as: :json
    assert_response 200
  end

  test "should destroy status_tarefa" do
    assert_difference('StatusTarefa.count', -1) do
      delete status_tarefa_url(@status_tarefa), as: :json
    end

    assert_response 204
  end
end
