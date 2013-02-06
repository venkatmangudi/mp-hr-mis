require 'test_helper'

class LeaveempsControllerTest < ActionController::TestCase
  setup do
    @leaveemp = leaveemps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leaveemps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leaveemp" do
    assert_difference('Leaveemp.count') do
      post :create, leaveemp: { date_from: @leaveemp.date_from, date_to: @leaveemp.date_to, days: @leaveemp.days, employee_id: @leaveemp.employee_id, leave_reason: @leaveemp.leave_reason, leave_type_id: @leaveemp.leave_type_id }
    end

    assert_redirected_to leaveemp_path(assigns(:leaveemp))
  end

  test "should show leaveemp" do
    get :show, id: @leaveemp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leaveemp
    assert_response :success
  end

  test "should update leaveemp" do
    put :update, id: @leaveemp, leaveemp: { date_from: @leaveemp.date_from, date_to: @leaveemp.date_to, days: @leaveemp.days, employee_id: @leaveemp.employee_id, leave_reason: @leaveemp.leave_reason, leave_type_id: @leaveemp.leave_type_id }
    assert_redirected_to leaveemp_path(assigns(:leaveemp))
  end

  test "should destroy leaveemp" do
    assert_difference('Leaveemp.count', -1) do
      delete :destroy, id: @leaveemp
    end

    assert_redirected_to leaveemps_path
  end
end
