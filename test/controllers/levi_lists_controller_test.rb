require 'test_helper'

class LeviListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get levi_lists_index_url
    assert_response :success
  end

  test "should get show" do
    get levi_lists_show_url
    assert_response :success
  end

  test "should get add" do
    get levi_lists_add_url
    assert_response :success
  end

  test "should get destroy" do
    get levi_lists_destroy_url
    assert_response :success
  end

end
