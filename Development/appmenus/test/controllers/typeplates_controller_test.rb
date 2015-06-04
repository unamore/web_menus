require 'test_helper'

class TypeplatesControllerTest < ActionController::TestCase
  setup do
    @typeplate = typeplates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:typeplates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create typeplate" do
    assert_difference('Typeplate.count') do
      post :create, typeplate: { codetype: @typeplate.codetype, nametype: @typeplate.nametype }
    end

    assert_redirected_to typeplate_path(assigns(:typeplate))
  end

  test "should show typeplate" do
    get :show, id: @typeplate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @typeplate
    assert_response :success
  end

  test "should update typeplate" do
    patch :update, id: @typeplate, typeplate: { codetype: @typeplate.codetype, nametype: @typeplate.nametype }
    assert_redirected_to typeplate_path(assigns(:typeplate))
  end

  test "should destroy typeplate" do
    assert_difference('Typeplate.count', -1) do
      delete :destroy, id: @typeplate
    end

    assert_redirected_to typeplates_path
  end
end
