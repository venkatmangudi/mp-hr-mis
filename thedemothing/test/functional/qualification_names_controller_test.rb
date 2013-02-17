require 'test_helper'

class QualificationNamesControllerTest < ActionController::TestCase
  setup do
    @qualification_name = qualification_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:qualification_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create qualification_name" do
    assert_difference('QualificationName.count') do
      post :create, qualification_name: { Qualification_name: @qualification_name.Qualification_name }
    end

    assert_redirected_to qualification_name_path(assigns(:qualification_name))
  end

  test "should show qualification_name" do
    get :show, id: @qualification_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @qualification_name
    assert_response :success
  end

  test "should update qualification_name" do
    put :update, id: @qualification_name, qualification_name: { Qualification_name: @qualification_name.Qualification_name }
    assert_redirected_to qualification_name_path(assigns(:qualification_name))
  end

  test "should destroy qualification_name" do
    assert_difference('QualificationName.count', -1) do
      delete :destroy, id: @qualification_name
    end

    assert_redirected_to qualification_names_path
  end
end
