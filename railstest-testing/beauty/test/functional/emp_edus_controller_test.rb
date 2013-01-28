require 'test_helper'

class EmpEdusControllerTest < ActionController::TestCase
  setup do
    @emp_edu = emp_edus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emp_edus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emp_edu" do
    assert_difference('EmpEdu.count') do
      post :create, emp_edu: { emp_education: @emp_edu.emp_education, emp_id: @emp_edu.emp_id, emp_remarks: @emp_edu.emp_remarks, emp_specialisation: @emp_edu.emp_specialisation }
    end

    assert_redirected_to emp_edu_path(assigns(:emp_edu))
  end

  test "should show emp_edu" do
    get :show, id: @emp_edu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emp_edu
    assert_response :success
  end

  test "should update emp_edu" do
    put :update, id: @emp_edu, emp_edu: { emp_education: @emp_edu.emp_education, emp_id: @emp_edu.emp_id, emp_remarks: @emp_edu.emp_remarks, emp_specialisation: @emp_edu.emp_specialisation }
    assert_redirected_to emp_edu_path(assigns(:emp_edu))
  end

  test "should destroy emp_edu" do
    assert_difference('EmpEdu.count', -1) do
      delete :destroy, id: @emp_edu
    end

    assert_redirected_to emp_edus_path
  end
end
