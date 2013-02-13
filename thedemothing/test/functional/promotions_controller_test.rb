require 'test_helper'

class PromotionsControllerTest < ActionController::TestCase
  setup do
    @promotion = promotions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:promotions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create promotion" do
    assert_difference('Promotion.count') do
      post :create, promotion: { current_payscale: @promotion.current_payscale, designation_id: @promotion.designation_id, designation_id: @promotion.designation_id, employee_id: @promotion.employee_id, new_payscale: @promotion.new_payscale, order_no: @promotion.order_no }
    end

    assert_redirected_to promotion_path(assigns(:promotion))
  end

  test "should show promotion" do
    get :show, id: @promotion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @promotion
    assert_response :success
  end

  test "should update promotion" do
    put :update, id: @promotion, promotion: { current_payscale: @promotion.current_payscale, designation_id: @promotion.designation_id, designation_id: @promotion.designation_id, employee_id: @promotion.employee_id, new_payscale: @promotion.new_payscale, order_no: @promotion.order_no }
    assert_redirected_to promotion_path(assigns(:promotion))
  end

  test "should destroy promotion" do
    assert_difference('Promotion.count', -1) do
      delete :destroy, id: @promotion
    end

    assert_redirected_to promotions_path
  end
end
