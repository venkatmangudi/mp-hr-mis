require 'test_helper'

class InstitutionTypesControllerTest < ActionController::TestCase
  setup do
    @institution_type = institution_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:institution_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create institution_type" do
    assert_difference('InstitutionType.count') do
      post :create, institution_type: { Institution_type: @institution_type.Institution_type }
    end

    assert_redirected_to institution_type_path(assigns(:institution_type))
  end

  test "should show institution_type" do
    get :show, id: @institution_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @institution_type
    assert_response :success
  end

  test "should update institution_type" do
    put :update, id: @institution_type, institution_type: { Institution_type: @institution_type.Institution_type }
    assert_redirected_to institution_type_path(assigns(:institution_type))
  end

  test "should destroy institution_type" do
    assert_difference('InstitutionType.count', -1) do
      delete :destroy, id: @institution_type
    end

    assert_redirected_to institution_types_path
  end
end
