require 'test_helper'

class EmpAddsControllerTest < ActionController::TestCase
  setup do
    @emp_add = emp_adds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emp_adds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emp_add" do
    assert_difference('EmpAdd.count') do
      post :create, emp_add: { emp_alt_email: @emp_add.emp_alt_email, emp_alt_mobile: @emp_add.emp_alt_mobile, emp_alt_phone: @emp_add.emp_alt_phone, emp_dlnum: @emp_add.emp_dlnum, emp_id: @emp_add.emp_id, emp_identification: @emp_add.emp_identification, emp_martial_status_id: @emp_add.emp_martial_status_id, emp_pannum: @emp_add.emp_pannum, emp_passportnum: @emp_add.emp_passportnum, emp_present_addr: @emp_add.emp_present_addr, emp_present_loc_master_id: @emp_add.emp_present_loc_master_id }
    end

    assert_redirected_to emp_add_path(assigns(:emp_add))
  end

  test "should show emp_add" do
    get :show, id: @emp_add
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emp_add
    assert_response :success
  end

  test "should update emp_add" do
    put :update, id: @emp_add, emp_add: { emp_alt_email: @emp_add.emp_alt_email, emp_alt_mobile: @emp_add.emp_alt_mobile, emp_alt_phone: @emp_add.emp_alt_phone, emp_dlnum: @emp_add.emp_dlnum, emp_id: @emp_add.emp_id, emp_identification: @emp_add.emp_identification, emp_martial_status_id: @emp_add.emp_martial_status_id, emp_pannum: @emp_add.emp_pannum, emp_passportnum: @emp_add.emp_passportnum, emp_present_addr: @emp_add.emp_present_addr, emp_present_loc_master_id: @emp_add.emp_present_loc_master_id }
    assert_redirected_to emp_add_path(assigns(:emp_add))
  end

  test "should destroy emp_add" do
    assert_difference('EmpAdd.count', -1) do
      delete :destroy, id: @emp_add
    end

    assert_redirected_to emp_adds_path
  end
end
