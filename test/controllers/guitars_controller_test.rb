require 'test_helper'

class GuitarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @guitar = guitars(:one)
  end

  test "should get index" do
    get guitars_url
    assert_response :success
  end

  test "should get new" do
    get new_guitar_url
    assert_response :success
  end

  test "should create guitar" do
    assert_difference('Guitar.count') do
      post guitars_url, params: { guitar: { body_finish: @guitar.body_finish, body_wood: @guitar.body_wood, bridge: @guitar.bridge, case: @guitar.case, controls: @guitar.controls, fingerboard: @guitar.fingerboard, fret_count: @guitar.fret_count, frets: @guitar.frets, hardware: @guitar.hardware, inlay_description: @guitar.inlay_description, inlays: @guitar.inlays, knobs: @guitar.knobs, model: @guitar.model, neck_finish: @guitar.neck_finish, neck_shape: @guitar.neck_shape, neck_wood: @guitar.neck_wood, nut_material: @guitar.nut_material, nut_width: @guitar.nut_width, pickups: @guitar.pickups, scale_length: @guitar.scale_length, serial: @guitar.serial, strings: @guitar.strings, switch: @guitar.switch, tuners: @guitar.tuners } }
    end

    assert_redirected_to guitar_url(Guitar.last)
  end

  test "should show guitar" do
    get guitar_url(@guitar)
    assert_response :success
  end

  test "should get edit" do
    get edit_guitar_url(@guitar)
    assert_response :success
  end

  test "should update guitar" do
    patch guitar_url(@guitar), params: { guitar: { body_finish: @guitar.body_finish, body_wood: @guitar.body_wood, bridge: @guitar.bridge, case: @guitar.case, controls: @guitar.controls, fingerboard: @guitar.fingerboard, fret_count: @guitar.fret_count, frets: @guitar.frets, hardware: @guitar.hardware, inlay_description: @guitar.inlay_description, inlays: @guitar.inlays, knobs: @guitar.knobs, model: @guitar.model, neck_finish: @guitar.neck_finish, neck_shape: @guitar.neck_shape, neck_wood: @guitar.neck_wood, nut_material: @guitar.nut_material, nut_width: @guitar.nut_width, pickups: @guitar.pickups, scale_length: @guitar.scale_length, serial: @guitar.serial, strings: @guitar.strings, switch: @guitar.switch, tuners: @guitar.tuners } }
    assert_redirected_to guitar_url(@guitar)
  end

  test "should destroy guitar" do
    assert_difference('Guitar.count', -1) do
      delete guitar_url(@guitar)
    end

    assert_redirected_to guitars_url
  end
end
