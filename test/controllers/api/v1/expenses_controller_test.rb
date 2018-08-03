require 'test_helper'

class Api::V1::ExpensesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_expenses_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_expenses_show_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_expenses_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_expenses_update_url
    assert_response :success
  end

  test "should get delete" do
    get api_v1_expenses_delete_url
    assert_response :success
  end

end
