require 'test_helper'

class AdoptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adoptions_index_url
    assert_response :success
  end

  test "should get new" do
    get adoptions_new_url
    assert_response :success
  end

  test "should get create" do
    get adoptions_create_url
    assert_response :success
  end

  test "should get show" do
    get adoptions_show_url
    assert_response :success
  end

  test "should get edit" do
    get adoptions_edit_url
    assert_response :success
  end

  test "should get update" do
    get adoptions_update_url
    assert_response :success
  end

  test "should get destroy" do
    get adoptions_destroy_url
    assert_response :success
  end

end
