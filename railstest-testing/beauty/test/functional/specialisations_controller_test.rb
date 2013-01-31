require 'test_helper'

class SpecialisationsControllerTest < ActionController::TestCase
  setup do
    @specialisation = specialisations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:specialisations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create specialisation" do
    assert_difference('Specialisation.count') do
      post :create, specialisation: { Specialisation_name: @specialisation.Specialisation_name }
    end

    assert_redirected_to specialisation_path(assigns(:specialisation))
  end

  test "should show specialisation" do
    get :show, id: @specialisation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @specialisation
    assert_response :success
  end

  test "should update specialisation" do
    put :update, id: @specialisation, specialisation: { Specialisation_name: @specialisation.Specialisation_name }
    assert_redirected_to specialisation_path(assigns(:specialisation))
  end

  test "should destroy specialisation" do
    assert_difference('Specialisation.count', -1) do
      delete :destroy, id: @specialisation
    end

    assert_redirected_to specialisations_path
  end
end
