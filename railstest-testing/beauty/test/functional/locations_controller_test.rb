require 'test_helper'

class LocationsControllerTest < ActionController::TestCase
  setup do
    @location = locations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:locations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create location" do
    assert_difference('Location.count') do
      post :create, location: { city_id: @location.city_id, country_id: @location.country_id, district_id: @location.district_id, loc_master_id: @location.loc_master_id, pincode_id: @location.pincode_id, state_id: @location.state_id, taluk_id: @location.taluk_id }
    end

    assert_redirected_to location_path(assigns(:location))
  end

  test "should show location" do
    get :show, id: @location
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @location
    assert_response :success
  end

  test "should update location" do
    put :update, id: @location, location: { city_id: @location.city_id, country_id: @location.country_id, district_id: @location.district_id, loc_master_id: @location.loc_master_id, pincode_id: @location.pincode_id, state_id: @location.state_id, taluk_id: @location.taluk_id }
    assert_redirected_to location_path(assigns(:location))
  end

  test "should destroy location" do
    assert_difference('Location.count', -1) do
      delete :destroy, id: @location
    end

    assert_redirected_to locations_path
  end
end
