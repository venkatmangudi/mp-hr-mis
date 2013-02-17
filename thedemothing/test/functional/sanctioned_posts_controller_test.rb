require 'test_helper'

class SanctionedPostsControllerTest < ActionController::TestCase
  setup do
    @sanctioned_post = sanctioned_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sanctioned_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sanctioned_post" do
    assert_difference('SanctionedPost.count') do
      post :create, sanctioned_post: { designationID: @sanctioned_post.designationID, health_dept_locationID: @sanctioned_post.health_dept_locationID, sac_post: @sanctioned_post.sac_post }
    end

    assert_redirected_to sanctioned_post_path(assigns(:sanctioned_post))
  end

  test "should show sanctioned_post" do
    get :show, id: @sanctioned_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sanctioned_post
    assert_response :success
  end

  test "should update sanctioned_post" do
    put :update, id: @sanctioned_post, sanctioned_post: { designationID: @sanctioned_post.designationID, health_dept_locationID: @sanctioned_post.health_dept_locationID, sac_post: @sanctioned_post.sac_post }
    assert_redirected_to sanctioned_post_path(assigns(:sanctioned_post))
  end

  test "should destroy sanctioned_post" do
    assert_difference('SanctionedPost.count', -1) do
      delete :destroy, id: @sanctioned_post
    end

    assert_redirected_to sanctioned_posts_path
  end
end
