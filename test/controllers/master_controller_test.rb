require "test_helper"

class MasterControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get master_new_url
    assert_response :success
  end

  test "should get index" do
    get master_index_url
    assert_response :success
  end

  test "should get show" do
    get master_show_url
    assert_response :success
  end

  test "should get edit" do
    get master_edit_url
    assert_response :success
  end
end
