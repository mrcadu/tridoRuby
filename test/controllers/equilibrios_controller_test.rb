require 'test_helper'

class EquilibriosControllerTest < ActionDispatch::IntegrationTest
    setup do
        @equilibrio = equilibrios(:one)
    end

    test "should get index" do
        get equilibrios_url, as: :json
        assert_response :success
    end

    test "should create equilibrio" do
        assert_difference('Equilibrio.count') do
            post equilibrios_url, params: { equilibrio: { Emocional: @equilibrio.Emocional, Espiritual: @equilibrio.Espiritual, Fisico: @equilibrio.Fisico, Mental: @equilibrio.Mental, id: @equilibrio.id } }, as: :json
        end

        assert_response 201
    end

    test "should show equilibrio" do
        get equilibrio_url(@equilibrio), as: :json
        assert_response :success
    end

    test "should update equilibrio" do
        patch equilibrio_url(@equilibrio), params: { equilibrio: { Emocional: @equilibrio.Emocional, Espiritual: @equilibrio.Espiritual, Fisico: @equilibrio.Fisico, Mental: @equilibrio.Mental, id: @equilibrio.id } }, as: :json
        assert_response 200
    end

    test "should destroy equilibrio" do
        assert_difference('Equilibrio.count', -1) do
            delete equilibrio_url(@equilibrio), as: :json
        end

        assert_response 204
    end
end
