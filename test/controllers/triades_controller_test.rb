require 'test_helper'

class TriadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @triade = triades(:one)
  end

  test "should get index" do
    get triades_url, as: :json
    assert_response :success
  end

  test "should create triade" do
    assert_difference('Triade.count') do
      post triades_url, params: { triade: { Circunstancial: @triade.Circunstancial, Importante: @triade.Importante, Urgente: @triade.Urgente } }, as: :json
    end

    assert_response 201
  end

  test "should show triade" do
    get triade_url(@triade), as: :json
    assert_response :success
  end

  test "should update triade" do
    patch triade_url(@triade), params: { triade: { Circunstancial: @triade.Circunstancial, Importante: @triade.Importante, Urgente: @triade.Urgente } }, as: :json
    assert_response 200
  end

  test "should destroy triade" do
    assert_difference('Triade.count', -1) do
      delete triade_url(@triade), as: :json
    end

    assert_response 204
  end
end
