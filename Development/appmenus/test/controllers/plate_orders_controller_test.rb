require 'test_helper'

class PlateOrdersControllerTest < ActionController::TestCase
  setup do
    @plate_order = plate_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plate_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plate_order" do
    assert_difference('PlateOrder.count') do
      post :create, plate_order: { order_id: @plate_order.order_id, plate_id: @plate_order.plate_id }
    end

    assert_redirected_to plate_order_path(assigns(:plate_order))
  end

  test "should show plate_order" do
    get :show, id: @plate_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plate_order
    assert_response :success
  end

  test "should update plate_order" do
    patch :update, id: @plate_order, plate_order: { order_id: @plate_order.order_id, plate_id: @plate_order.plate_id }
    assert_redirected_to plate_order_path(assigns(:plate_order))
  end

  test "should destroy plate_order" do
    assert_difference('PlateOrder.count', -1) do
      delete :destroy, id: @plate_order
    end

    assert_redirected_to plate_orders_path
  end
end
