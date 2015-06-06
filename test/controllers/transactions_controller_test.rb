require 'test_helper'

class TransactionsControllerTest < ActionController::TestCase
  setup do
    @transaction = transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transaction" do
    assert_difference('Transaction.count') do
      post :create, transaction: { amount: @transaction.amount, client_id: @transaction.client_id, company_id: @transaction.company_id, exchange_rate_id: @transaction.exchange_rate_id, foreign_exchange_id: @transaction.foreign_exchange_id, operation_type: @transaction.operation_type, value_date: @transaction.value_date }
    end

    assert_redirected_to transaction_path(assigns(:transaction))
  end

  test "should show transaction" do
    get :show, id: @transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transaction
    assert_response :success
  end

  test "should update transaction" do
    patch :update, id: @transaction, transaction: { amount: @transaction.amount, client_id: @transaction.client_id, company_id: @transaction.company_id, exchange_rate_id: @transaction.exchange_rate_id, foreign_exchange_id: @transaction.foreign_exchange_id, operation_type: @transaction.operation_type, value_date: @transaction.value_date }
    assert_redirected_to transaction_path(assigns(:transaction))
  end

  test "should destroy transaction" do
    assert_difference('Transaction.count', -1) do
      delete :destroy, id: @transaction
    end

    assert_redirected_to transactions_path
  end
end
