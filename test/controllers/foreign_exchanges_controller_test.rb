require 'test_helper'

class ForeignExchangesControllerTest < ActionController::TestCase
  setup do
    @foreign_exchange = foreign_exchanges(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:foreign_exchanges)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create foreign_exchange" do
    assert_difference('ForeignExchange.count') do
      post :create, foreign_exchange: { description: @foreign_exchange.description, name: @foreign_exchange.name }
    end

    assert_redirected_to foreign_exchange_path(assigns(:foreign_exchange))
  end

  test "should show foreign_exchange" do
    get :show, id: @foreign_exchange
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @foreign_exchange
    assert_response :success
  end

  test "should update foreign_exchange" do
    patch :update, id: @foreign_exchange, foreign_exchange: { description: @foreign_exchange.description, name: @foreign_exchange.name }
    assert_redirected_to foreign_exchange_path(assigns(:foreign_exchange))
  end

  test "should destroy foreign_exchange" do
    assert_difference('ForeignExchange.count', -1) do
      delete :destroy, id: @foreign_exchange
    end

    assert_redirected_to foreign_exchanges_path
  end
end
