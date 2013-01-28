require 'test_helper'

class BloodGroupsControllerTest < ActionController::TestCase
  setup do
    @blood_group = blood_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blood_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blood_group" do
    assert_difference('BloodGroup.count') do
      post :create, blood_group: { blood_group_type: @blood_group.blood_group_type }
    end

    assert_redirected_to blood_group_path(assigns(:blood_group))
  end

  test "should show blood_group" do
    get :show, id: @blood_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blood_group
    assert_response :success
  end

  test "should update blood_group" do
    put :update, id: @blood_group, blood_group: { blood_group_type: @blood_group.blood_group_type }
    assert_redirected_to blood_group_path(assigns(:blood_group))
  end

  test "should destroy blood_group" do
    assert_difference('BloodGroup.count', -1) do
      delete :destroy, id: @blood_group
    end

    assert_redirected_to blood_groups_path
  end
end
