require 'test_helper'

class CoOpControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get co_op_index_url
    assert_response :success
  end

  test "should get show" do
    get co_op_show_url
    assert_response :success
  end

  test "should get create" do
    get co_op_create_url
    assert_response :success
  end

  test "should get edit" do
    get co_op_edit_url
    assert_response :success
  end

end
