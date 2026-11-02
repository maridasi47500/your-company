require "test_helper"

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get simple" do
    get search_simple_url
    assert_response :success
  end
end
