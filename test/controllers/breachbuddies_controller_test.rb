require "test_helper"

class BreachbuddiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @breachbuddy = breachbuddies(:one)
  end

  test "should get index" do
    get breachbuddies_url
    assert_response :success
  end

  test "should get new" do
    get new_breachbuddy_url
    assert_response :success
  end

  test "should create breachbuddy" do
    assert_difference("Breachbuddy.count") do
      post breachbuddies_url, params: { breachbuddy: { device_type: @breachbuddy.device_type, location: @breachbuddy.location, name_associated: @breachbuddy.name_associated, serial_number: @breachbuddy.serial_number } }
    end

    assert_redirected_to breachbuddy_url(Breachbuddy.last)
  end

  test "should show breachbuddy" do
    get breachbuddy_url(@breachbuddy)
    assert_response :success
  end

  test "should get edit" do
    get edit_breachbuddy_url(@breachbuddy)
    assert_response :success
  end

  test "should update breachbuddy" do
    patch breachbuddy_url(@breachbuddy), params: { breachbuddy: { device_type: @breachbuddy.device_type, location: @breachbuddy.location, name_associated: @breachbuddy.name_associated, serial_number: @breachbuddy.serial_number } }
    assert_redirected_to breachbuddy_url(@breachbuddy)
  end

  test "should destroy breachbuddy" do
    assert_difference("Breachbuddy.count", -1) do
      delete breachbuddy_url(@breachbuddy)
    end

    assert_redirected_to breachbuddies_url
  end
end
