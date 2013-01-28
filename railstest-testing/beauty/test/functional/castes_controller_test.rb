require 'test_helper'

class CastesControllerTest < ActionController::TestCase
  setup do
    @caste = castes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:castes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caste" do
    assert_difference('Caste.count') do
      post :create, caste: { caste_name: @caste.caste_name }
    end

    assert_redirected_to caste_path(assigns(:caste))
  end

  test "should show caste" do
    get :show, id: @caste
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caste
    assert_response :success
  end

  test "should update caste" do
    put :update, id: @caste, caste: { caste_name: @caste.caste_name }
    assert_redirected_to caste_path(assigns(:caste))
  end

  test "should destroy caste" do
    assert_difference('Caste.count', -1) do
      delete :destroy, id: @caste
    end

    assert_redirected_to castes_path
  end
end
