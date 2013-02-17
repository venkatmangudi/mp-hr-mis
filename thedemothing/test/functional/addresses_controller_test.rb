require 'test_helper'

class AddressesControllerTest < ActionController::TestCase
  setup do
    @address = addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post :create, address: { address1: @address.address1, address2: @address.address2, address3: @address.address3, city: @address.city, emailid: @address.emailid, employee_id: @address.employee_id, homephone: @address.homephone, mobilephone: @address.mobilephone, perm_address1: @address.perm_address1, perm_address2: @address.perm_address2, perm_address3: @address.perm_address3, perm_city: @address.perm_city, perm_homephone: @address.perm_homephone, perm_postalcode: @address.perm_postalcode, perm_postoffice: @address.perm_postoffice, perm_state_id: @address.perm_state_id, postalcode: @address.postalcode, postoffice: @address.postoffice, state_id: @address.state_id, validsince: @address.validsince }
    end

    assert_redirected_to address_path(assigns(:address))
  end

  test "should show address" do
    get :show, id: @address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @address
    assert_response :success
  end

  test "should update address" do
    put :update, id: @address, address: { address1: @address.address1, address2: @address.address2, address3: @address.address3, city: @address.city, emailid: @address.emailid, employee_id: @address.employee_id, homephone: @address.homephone, mobilephone: @address.mobilephone, perm_address1: @address.perm_address1, perm_address2: @address.perm_address2, perm_address3: @address.perm_address3, perm_city: @address.perm_city, perm_homephone: @address.perm_homephone, perm_postalcode: @address.perm_postalcode, perm_postoffice: @address.perm_postoffice, perm_state_id: @address.perm_state_id, postalcode: @address.postalcode, postoffice: @address.postoffice, state_id: @address.state_id, validsince: @address.validsince }
    assert_redirected_to address_path(assigns(:address))
  end

  test "should destroy address" do
    assert_difference('Address.count', -1) do
      delete :destroy, id: @address
    end

    assert_redirected_to addresses_path
  end
end
