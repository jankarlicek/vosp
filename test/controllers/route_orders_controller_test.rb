require 'test_helper'

class RouteOrdersControllerTest < ActionController::TestCase
  setup do
    @route_order = route_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:route_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create route_order" do
    assert_difference('RouteOrder.count') do
      post :create, route_order: {  }
    end

    assert_redirected_to route_order_path(assigns(:route_order))
  end

  test "should show route_order" do
    get :show, id: @route_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @route_order
    assert_response :success
  end

  test "should update route_order" do
    patch :update, id: @route_order, route_order: {  }
    assert_redirected_to route_order_path(assigns(:route_order))
  end

  test "should destroy route_order" do
    assert_difference('RouteOrder.count', -1) do
      delete :destroy, id: @route_order
    end

    assert_redirected_to route_orders_path
  end
end
