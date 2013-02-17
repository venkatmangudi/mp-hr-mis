require 'test_helper'

class TempusControllerTest < ActionController::TestCase
  setup do
    @tempu = tempus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tempus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tempu" do
    assert_difference('Tempu.count') do
      post :create, tempu: { state_id: @tempu.state_id }
    end

    assert_redirected_to tempu_path(assigns(:tempu))
  end

  test "should show tempu" do
    get :show, id: @tempu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tempu
    assert_response :success
  end

  test "should update tempu" do
    put :update, id: @tempu, tempu: { state_id: @tempu.state_id }
    assert_redirected_to tempu_path(assigns(:tempu))
  end

  test "should destroy tempu" do
    assert_difference('Tempu.count', -1) do
      delete :destroy, id: @tempu
    end

    assert_redirected_to tempus_path
  end
end
