require 'test_helper'

class AdditionalChargesControllerTest < ActionController::TestCase
  setup do
    @additional_charge = additional_charges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:additional_charges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create additional_charge" do
    assert_difference('AdditionalCharge.count') do
      post :create, additional_charge: { add_chargeID: @additional_charge.add_chargeID, designation_id: @additional_charge.designation_id, employee_id: @additional_charge.employee_id, from_date: @additional_charge.from_date, location_id: @additional_charge.location_id, to_date: @additional_charge.to_date }
    end

    assert_redirected_to additional_charge_path(assigns(:additional_charge))
  end

  test "should show additional_charge" do
    get :show, id: @additional_charge
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @additional_charge
    assert_response :success
  end

  test "should update additional_charge" do
    put :update, id: @additional_charge, additional_charge: { add_chargeID: @additional_charge.add_chargeID, designation_id: @additional_charge.designation_id, employee_id: @additional_charge.employee_id, from_date: @additional_charge.from_date, location_id: @additional_charge.location_id, to_date: @additional_charge.to_date }
    assert_redirected_to additional_charge_path(assigns(:additional_charge))
  end

  test "should destroy additional_charge" do
    assert_difference('AdditionalCharge.count', -1) do
      delete :destroy, id: @additional_charge
    end

    assert_redirected_to additional_charges_path
  end
end
