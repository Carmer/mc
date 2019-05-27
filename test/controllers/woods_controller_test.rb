require 'test_helper'

class WoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wood = woods(:one)
  end

  test "should get index" do
    get woods_url
    assert_response :success
  end

  test "should get new" do
    get new_wood_url
    assert_response :success
  end

  test "should create wood" do
    assert_difference('Wood.count') do
      post woods_url, params: { wood: { desity: @wood.desity, grade: @wood.grade, modulus_of_elasticity: @wood.modulus_of_elasticity, nickname: @wood.nickname, origin: @wood.origin, radiation_coefficient: @wood.radiation_coefficient, speed_of_sound: @wood.speed_of_sound } }
    end

    assert_redirected_to wood_url(Wood.last)
  end

  test "should show wood" do
    get wood_url(@wood)
    assert_response :success
  end

  test "should get edit" do
    get edit_wood_url(@wood)
    assert_response :success
  end

  test "should update wood" do
    patch wood_url(@wood), params: { wood: { desity: @wood.desity, grade: @wood.grade, modulus_of_elasticity: @wood.modulus_of_elasticity, nickname: @wood.nickname, origin: @wood.origin, radiation_coefficient: @wood.radiation_coefficient, speed_of_sound: @wood.speed_of_sound } }
    assert_redirected_to wood_url(@wood)
  end

  test "should destroy wood" do
    assert_difference('Wood.count', -1) do
      delete wood_url(@wood)
    end

    assert_redirected_to woods_url
  end
end
