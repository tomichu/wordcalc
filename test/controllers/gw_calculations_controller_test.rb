require 'test_helper'

class GwCalculationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gw_calculation = gw_calculations(:one)
  end

  test "should get index" do
    get gw_calculations_url
    assert_response :success
  end

  test "should get new" do
    get new_gw_calculation_url
    assert_response :success
  end

  test "should create gw_calculation" do
    assert_difference('GwCalculation.count') do
      post gw_calculations_url, params: { gw_calculation: { course: @gw_calculation.course, fri: @gw_calculation.fri, mon: @gw_calculation.mon, thr: @gw_calculation.thr, tue: @gw_calculation.tue, wed: @gw_calculation.wed } }
    end

    assert_redirected_to gw_calculation_url(GwCalculation.last)
  end

  test "should show gw_calculation" do
    get gw_calculation_url(@gw_calculation)
    assert_response :success
  end

  test "should get edit" do
    get edit_gw_calculation_url(@gw_calculation)
    assert_response :success
  end

  test "should update gw_calculation" do
    patch gw_calculation_url(@gw_calculation), params: { gw_calculation: { course: @gw_calculation.course, fri: @gw_calculation.fri, mon: @gw_calculation.mon, thr: @gw_calculation.thr, tue: @gw_calculation.tue, wed: @gw_calculation.wed } }
    assert_redirected_to gw_calculation_url(@gw_calculation)
  end

  test "should destroy gw_calculation" do
    assert_difference('GwCalculation.count', -1) do
      delete gw_calculation_url(@gw_calculation)
    end

    assert_redirected_to gw_calculations_url
  end
end
