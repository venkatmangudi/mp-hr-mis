require 'test_helper'

class QualificationsControllerTest < ActionController::TestCase
  setup do
    @qualification = qualifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qualifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qualification" do
    assert_difference('Qualification.count') do
      post :create, qualification: { Remarks: @qualification.Remarks, employee_id: @qualification.employee_id, qualification_name_id: @qualification.qualification_name_id, qualification_type_id: @qualification.qualification_type_id, specialisation_id: @qualification.specialisation_id, university_id: @qualification.university_id, year: @qualification.year }
    end

    assert_redirected_to qualification_path(assigns(:qualification))
  end

  test "should show qualification" do
    get :show, id: @qualification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qualification
    assert_response :success
  end

  test "should update qualification" do
    put :update, id: @qualification, qualification: { Remarks: @qualification.Remarks, employee_id: @qualification.employee_id, qualification_name_id: @qualification.qualification_name_id, qualification_type_id: @qualification.qualification_type_id, specialisation_id: @qualification.specialisation_id, university_id: @qualification.university_id, year: @qualification.year }
    assert_redirected_to qualification_path(assigns(:qualification))
  end

  test "should destroy qualification" do
    assert_difference('Qualification.count', -1) do
      delete :destroy, id: @qualification
    end

    assert_redirected_to qualifications_path
  end
end
