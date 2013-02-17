require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  setup do
    @employee = employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee" do
    assert_difference('Employee.count') do
      post :create, employee: { blood_group_id: @employee.blood_group_id, caste_id: @employee.caste_id, category_id: @employee.category_id, emp_dob: @employee.emp_dob, emp_email: @employee.emp_email, emp_fathername: @employee.emp_fathername, emp_fname: @employee.emp_fname, emp_full_name: @employee.emp_full_name, gender_id: @employee.gender_id, emp_id: @employee.emp_id, emp_lname: @employee.emp_lname, emp_loc_master_id: @employee.emp_loc_master_id, emp_mname: @employee.emp_mname, emp_mobile_no: @employee.emp_mobile_no, emp_new_id: @employee.emp_new_id, emp_no: @employee.emp_no, emp_permanent_address: @employee.emp_permanent_address, emp_phone_no: @employee.emp_phone_no, religion_id: @employee.religion_id }
    end

    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should show employee" do
    get :show, id: @employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee
    assert_response :success
  end

  test "should update employee" do
    put :update, id: @employee, employee: { blood_group_id: @employee.blood_group_id, caste_id: @employee.caste_id, category_id: @employee.category_id, emp_dob: @employee.emp_dob, emp_email: @employee.emp_email, emp_fathername: @employee.emp_fathername, emp_fname: @employee.emp_fname, emp_full_name: @employee.emp_full_name, gender_id: @employee.gender_id, emp_id: @employee.emp_id, emp_lname: @employee.emp_lname, emp_loc_master_id: @employee.emp_loc_master_id, emp_mname: @employee.emp_mname, emp_mobile_no: @employee.emp_mobile_no, emp_new_id: @employee.emp_new_id, emp_no: @employee.emp_no, emp_permanent_address: @employee.emp_permanent_address, emp_phone_no: @employee.emp_phone_no, religion_id: @employee.religion_id }
    assert_redirected_to employee_path(assigns(:employee))
  end

  test "should destroy employee" do
    assert_difference('Employee.count', -1) do
      delete :destroy, id: @employee
    end

    assert_redirected_to employees_path
  end
end
