require 'test_helper'

class MenuOrdersControllerTest < ActionController::TestCase
  setup do
    @menu_order = menu_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:menu_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create menu_order" do
    assert_difference('MenuOrder.count') do
      post :create, menu_order: { menu_id: @menu_order.menu_id, order_id: @menu_order.order_id }
    end

    assert_redirected_to menu_order_path(assigns(:menu_order))
  end

  test "should show menu_order" do
    get :show, id: @menu_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @menu_order
    assert_response :success
  end

  test "should update menu_order" do
    patch :update, id: @menu_order, menu_order: { menu_id: @menu_order.menu_id, order_id: @menu_order.order_id }
    assert_redirected_to menu_order_path(assigns(:menu_order))
  end

  test "should destroy menu_order" do
    assert_difference('MenuOrder.count', -1) do
      delete :destroy, id: @menu_order
    end

    assert_redirected_to menu_orders_path
  end
end
