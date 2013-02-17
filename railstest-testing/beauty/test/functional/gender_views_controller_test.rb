require 'test_helper'

class GenderViewsControllerTest < ActionController::TestCase
  setup do
    @gender_view = gender_views(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gender_views)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gender_view" do
    assert_difference('GenderView.count') do
      post :create, gender_view: {  }
    end

    assert_redirected_to gender_view_path(assigns(:gender_view))
  end

  test "should show gender_view" do
    get :show, id: @gender_view
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gender_view
    assert_response :success
  end

  test "should update gender_view" do
    put :update, id: @gender_view, gender_view: {  }
    assert_redirected_to gender_view_path(assigns(:gender_view))
  end

  test "should destroy gender_view" do
    assert_difference('GenderView.count', -1) do
      delete :destroy, id: @gender_view
    end

    assert_redirected_to gender_views_path
  end
end
