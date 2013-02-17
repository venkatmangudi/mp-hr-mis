require 'test_helper'

class ShowcausesControllerTest < ActionController::TestCase
  setup do
    @showcause = showcauses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:showcauses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create showcause" do
    assert_difference('Showcause.count') do
      post :create, showcause: { SC_date: @showcause.SC_date, case_no: @showcause.case_no, details: @showcause.details, district_authority: @showcause.district_authority, employee_id: @showcause.employee_id, title: @showcause.title }
    end

    assert_redirected_to showcause_path(assigns(:showcause))
  end

  test "should show showcause" do
    get :show, id: @showcause
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @showcause
    assert_response :success
  end

  test "should update showcause" do
    put :update, id: @showcause, showcause: { SC_date: @showcause.SC_date, case_no: @showcause.case_no, details: @showcause.details, district_authority: @showcause.district_authority, employee_id: @showcause.employee_id, title: @showcause.title }
    assert_redirected_to showcause_path(assigns(:showcause))
  end

  test "should destroy showcause" do
    assert_difference('Showcause.count', -1) do
      delete :destroy, id: @showcause
    end

    assert_redirected_to showcauses_path
  end
end
