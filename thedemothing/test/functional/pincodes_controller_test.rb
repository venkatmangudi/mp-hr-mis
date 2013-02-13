require 'test_helper'

class PincodesControllerTest < ActionController::TestCase
  setup do
    @pincode = pincodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pincodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pincode" do
    assert_difference('Pincode.count') do
      post :create, pincode: { pincode: @pincode.pincode }
    end

    assert_redirected_to pincode_path(assigns(:pincode))
  end

  test "should show pincode" do
    get :show, id: @pincode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pincode
    assert_response :success
  end

  test "should update pincode" do
    put :update, id: @pincode, pincode: { pincode: @pincode.pincode }
    assert_redirected_to pincode_path(assigns(:pincode))
  end

  test "should destroy pincode" do
    assert_difference('Pincode.count', -1) do
      delete :destroy, id: @pincode
    end

    assert_redirected_to pincodes_path
  end
end
