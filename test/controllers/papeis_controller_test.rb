require 'test_helper'

class PapeisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @papel = papeis(:one)
  end

  test "should get index" do
    get papeis_url, as: :json
    assert_response :success
  end

  test "should create papel" do
    assert_difference('Papel.count') do
      post papeis_url, params: { papel: { nome: @papel.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show papel" do
    get papel_url(@papel), as: :json
    assert_response :success
  end

  test "should update papel" do
    patch papel_url(@papel), params: { papel: { nome: @papel.nome } }, as: :json
    assert_response 200
  end

  test "should destroy papel" do
    assert_difference('Papel.count', -1) do
      delete papel_url(@papel), as: :json
    end

    assert_response 204
  end
end
