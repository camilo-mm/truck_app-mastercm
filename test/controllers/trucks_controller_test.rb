require 'test_helper'

class TrucksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get trucks_index_url
    assert_response :success
  end

  test "should get new" do
    get trucks_new_url
    assert_response :success
  end

  test "should get show" do
    get trucks_show_url
    assert_response :success
  end

  test "should get edit" do
    get trucks_edit_url
    assert_response :success
  end

  test "should get update" do
    get trucks_update_url
    assert_response :success
  end

  test "should get destroy" do
    get trucks_destroy_url
    assert_response :success
  end

end
