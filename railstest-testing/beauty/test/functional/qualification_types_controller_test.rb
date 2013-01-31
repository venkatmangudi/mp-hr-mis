require 'test_helper'

class QualificationTypesControllerTest < ActionController::TestCase
  setup do
    @qualification_type = qualification_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qualification_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qualification_type" do
    assert_difference('QualificationType.count') do
      post :create, qualification_type: { Qualification_type: @qualification_type.Qualification_type }
    end

    assert_redirected_to qualification_type_path(assigns(:qualification_type))
  end

  test "should show qualification_type" do
    get :show, id: @qualification_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qualification_type
    assert_response :success
  end

  test "should update qualification_type" do
    put :update, id: @qualification_type, qualification_type: { Qualification_type: @qualification_type.Qualification_type }
    assert_redirected_to qualification_type_path(assigns(:qualification_type))
  end

  test "should destroy qualification_type" do
    assert_difference('QualificationType.count', -1) do
      delete :destroy, id: @qualification_type
    end

    assert_redirected_to qualification_types_path
  end
end
