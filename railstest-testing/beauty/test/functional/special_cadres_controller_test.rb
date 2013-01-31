require 'test_helper'

class SpecialCadresControllerTest < ActionController::TestCase
  setup do
    @special_cadre = special_cadres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:special_cadres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create special_cadre" do
    assert_difference('SpecialCadre.count') do
      post :create, special_cadre: { Special_Cadre_Type: @special_cadre.Special_Cadre_Type }
    end

    assert_redirected_to special_cadre_path(assigns(:special_cadre))
  end

  test "should show special_cadre" do
    get :show, id: @special_cadre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @special_cadre
    assert_response :success
  end

  test "should update special_cadre" do
    put :update, id: @special_cadre, special_cadre: { Special_Cadre_Type: @special_cadre.Special_Cadre_Type }
    assert_redirected_to special_cadre_path(assigns(:special_cadre))
  end

  test "should destroy special_cadre" do
    assert_difference('SpecialCadre.count', -1) do
      delete :destroy, id: @special_cadre
    end

    assert_redirected_to special_cadres_path
  end
end
