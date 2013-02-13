require 'test_helper'

class LeaveTypesControllerTest < ActionController::TestCase
  setup do
    @leave_type = leave_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leave_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leave_type" do
    assert_difference('LeaveType.count') do
      post :create, leave_type: { leave_type: @leave_type.leave_type }
    end

    assert_redirected_to leave_type_path(assigns(:leave_type))
  end

  test "should show leave_type" do
    get :show, id: @leave_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leave_type
    assert_response :success
  end

  test "should update leave_type" do
    put :update, id: @leave_type, leave_type: { leave_type: @leave_type.leave_type }
    assert_redirected_to leave_type_path(assigns(:leave_type))
  end

  test "should destroy leave_type" do
    assert_difference('LeaveType.count', -1) do
      delete :destroy, id: @leave_type
    end

    assert_redirected_to leave_types_path
  end
end
