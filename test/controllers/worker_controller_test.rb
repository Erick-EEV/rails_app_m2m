require 'test_helper'

class WorkerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get worker_index_url
    assert_response :success
  end

  test "should get show" do
    get worker_show_url
    assert_response :success
  end

  test "should get create" do
    get worker_create_url
    assert_response :success
  end

  test "should get edit" do
    get worker_edit_url
    assert_response :success
  end

end
