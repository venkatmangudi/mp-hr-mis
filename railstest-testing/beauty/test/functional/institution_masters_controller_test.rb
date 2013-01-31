require 'test_helper'

class InstitutionMastersControllerTest < ActionController::TestCase
  setup do
    @institution_master = institution_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:institution_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create institution_master" do
    assert_difference('InstitutionMaster.count') do
      post :create, institution_master: { Beds: @institution_master.Beds, Institution_Name: @institution_master.Institution_Name, Institution_type_id: @institution_master.Institution_type_id, Special_Cadre_id: @institution_master.Special_Cadre_id, district_id: @institution_master.district_id, pincode_id: @institution_master.pincode_id }
    end

    assert_redirected_to institution_master_path(assigns(:institution_master))
  end

  test "should show institution_master" do
    get :show, id: @institution_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @institution_master
    assert_response :success
  end

  test "should update institution_master" do
    put :update, id: @institution_master, institution_master: { Beds: @institution_master.Beds, Institution_Name: @institution_master.Institution_Name, Institution_type_id: @institution_master.Institution_type_id, Special_Cadre_id: @institution_master.Special_Cadre_id, district_id: @institution_master.district_id, pincode_id: @institution_master.pincode_id }
    assert_redirected_to institution_master_path(assigns(:institution_master))
  end

  test "should destroy institution_master" do
    assert_difference('InstitutionMaster.count', -1) do
      delete :destroy, id: @institution_master
    end

    assert_redirected_to institution_masters_path
  end
end
