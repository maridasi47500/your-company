require "test_helper"

class LogindetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @logindetail = logindetails(:one)
  end

  test "should get index" do
    get logindetails_url
    assert_response :success
  end

  test "should get new" do
    get new_logindetail_url
    assert_response :success
  end

  test "should create logindetail" do
    assert_difference("Logindetail.count") do
      post logindetails_url, params: { logindetail: { email: @logindetail.email, password: @logindetail.password } }
    end

    assert_redirected_to logindetail_url(Logindetail.last)
  end

  test "should show logindetail" do
    get logindetail_url(@logindetail)
    assert_response :success
  end

  test "should get edit" do
    get edit_logindetail_url(@logindetail)
    assert_response :success
  end

  test "should update logindetail" do
    patch logindetail_url(@logindetail), params: { logindetail: { email: @logindetail.email, password: @logindetail.password } }
    assert_redirected_to logindetail_url(@logindetail)
  end

  test "should destroy logindetail" do
    assert_difference("Logindetail.count", -1) do
      delete logindetail_url(@logindetail)
    end

    assert_redirected_to logindetails_url
  end
end
