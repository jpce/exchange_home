require 'test_helper'

class PositionsControllerTest < ActionController::TestCase
  setup do
    @position = positions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:positions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create position" do
    assert_difference('Position.count') do
      post :create, position: { amount: @position.amount, company_id: @position.company_id, date: @position.date, foreign_exchange_id: @position.foreign_exchange_id }
    end

    assert_redirected_to position_path(assigns(:position))
  end

  test "should show position" do
    get :show, id: @position
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @position
    assert_response :success
  end

  test "should update position" do
    patch :update, id: @position, position: { amount: @position.amount, company_id: @position.company_id, date: @position.date, foreign_exchange_id: @position.foreign_exchange_id }
    assert_redirected_to position_path(assigns(:position))
  end

  test "should destroy position" do
    assert_difference('Position.count', -1) do
      delete :destroy, id: @position
    end

    assert_redirected_to positions_path
  end
end
