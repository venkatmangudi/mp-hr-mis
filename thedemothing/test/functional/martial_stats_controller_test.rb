require 'test_helper'

class MartialStatsControllerTest < ActionController::TestCase
  setup do
    @martial_stat = martial_stats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:martial_stats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create martial_stat" do
    assert_difference('MartialStat.count') do
      post :create, martial_stat: { martial_status_type: @martial_stat.martial_status_type }
    end

    assert_redirected_to martial_stat_path(assigns(:martial_stat))
  end

  test "should show martial_stat" do
    get :show, id: @martial_stat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @martial_stat
    assert_response :success
  end

  test "should update martial_stat" do
    put :update, id: @martial_stat, martial_stat: { martial_status_type: @martial_stat.martial_status_type }
    assert_redirected_to martial_stat_path(assigns(:martial_stat))
  end

  test "should destroy martial_stat" do
    assert_difference('MartialStat.count', -1) do
      delete :destroy, id: @martial_stat
    end

    assert_redirected_to martial_stats_path
  end
end
