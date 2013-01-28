require 'test_helper'

class TaluksControllerTest < ActionController::TestCase
  setup do
    @taluk = taluks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taluks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taluk" do
    assert_difference('Taluk.count') do
      post :create, taluk: { taluk_name: @taluk.taluk_name }
    end

    assert_redirected_to taluk_path(assigns(:taluk))
  end

  test "should show taluk" do
    get :show, id: @taluk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taluk
    assert_response :success
  end

  test "should update taluk" do
    put :update, id: @taluk, taluk: { taluk_name: @taluk.taluk_name }
    assert_redirected_to taluk_path(assigns(:taluk))
  end

  test "should destroy taluk" do
    assert_difference('Taluk.count', -1) do
      delete :destroy, id: @taluk
    end

    assert_redirected_to taluks_path
  end
end
