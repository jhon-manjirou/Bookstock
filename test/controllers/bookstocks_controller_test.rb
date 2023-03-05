require "test_helper"

class BookstocksControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get bookstocks_show_url
    assert_response :success
  end

  test "should get edit" do
    get bookstocks_edit_url
    assert_response :success
  end
end
