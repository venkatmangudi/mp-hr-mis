require 'test_helper'

class EmploymentTypesControllerTest < ActionController::TestCase
  setup do
    @employment_type = employment_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employment_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employment_type" do
    assert_difference('EmploymentType.count') do
      post :create, employment_type: { employment_type: @employment_type.employment_type }
    end

    assert_redirected_to employment_type_path(assigns(:employment_type))
  end

  test "should show employment_type" do
    get :show, id: @employment_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employment_type
    assert_response :success
  end

  test "should update employment_type" do
    put :update, id: @employment_type, employment_type: { employment_type: @employment_type.employment_type }
    assert_redirected_to employment_type_path(assigns(:employment_type))
  end

  test "should destroy employment_type" do
    assert_difference('EmploymentType.count', -1) do
      delete :destroy, id: @employment_type
    end

    assert_redirected_to employment_types_path
  end
end
