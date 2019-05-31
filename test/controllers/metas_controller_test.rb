require 'test_helper'

class MetasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @meta = metas(:one)
  end

  test "should get index" do
    get metas_url, as: :json
    assert_response :success
  end

  test "should create meta" do
    assert_difference('Meta.count') do
      post metas_url, params: {meta: {nome: @meta.nome } }, as: :json
    end

    assert_response 201
  end

  test "should show meta" do
    get meta_url(@meta), as: :json
    assert_response :success
  end

  test "should update meta" do
    patch meta_url(@meta), params: {meta: {nome: @meta.nome } }, as: :json
    assert_response 200
  end

  test "should destroy meta" do
    assert_difference('Meta.count', -1) do
      delete meta_url(@meta), as: :json
    end

    assert_response 204
  end
end
