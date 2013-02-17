require 'test_helper'

class HealthDeptLocationsControllerTest < ActionController::TestCase
  setup do
    @health_dept_location = health_dept_locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:health_dept_locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create health_dept_location" do
    assert_difference('HealthDeptLocation.count') do
      post :create, health_dept_location: { admin_location: @health_dept_location.admin_location, block_id: @health_dept_location.block_id, district_code: @health_dept_location.district_code, district_id: @health_dept_location.district_id, division_id: @health_dept_location.division_id, istribal: @health_dept_location.istribal, location_id: @health_dept_location.location_id, name: @health_dept_location.name, no_of_beds: @health_dept_location.no_of_beds }
    end

    assert_redirected_to health_dept_location_path(assigns(:health_dept_location))
  end

  test "should show health_dept_location" do
    get :show, id: @health_dept_location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @health_dept_location
    assert_response :success
  end

  test "should update health_dept_location" do
    put :update, id: @health_dept_location, health_dept_location: { admin_location: @health_dept_location.admin_location, block_id: @health_dept_location.block_id, district_code: @health_dept_location.district_code, district_id: @health_dept_location.district_id, division_id: @health_dept_location.division_id, istribal: @health_dept_location.istribal, location_id: @health_dept_location.location_id, name: @health_dept_location.name, no_of_beds: @health_dept_location.no_of_beds }
    assert_redirected_to health_dept_location_path(assigns(:health_dept_location))
  end

  test "should destroy health_dept_location" do
    assert_difference('HealthDeptLocation.count', -1) do
      delete :destroy, id: @health_dept_location
    end

    assert_redirected_to health_dept_locations_path
  end
end
