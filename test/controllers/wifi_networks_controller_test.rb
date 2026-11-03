require "test_helper"

class WifiNetworksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wifi_network = wifi_networks(:one)
  end

  test "should get index" do
    get wifi_networks_url
    assert_response :success
  end

  test "should get new" do
    get new_wifi_network_url
    assert_response :success
  end

  test "should create wifi_network" do
    assert_difference("WifiNetwork.count") do
      post wifi_networks_url, params: { wifi_network: { firmware_updates: @wifi_network.firmware_updates, password: @wifi_network.password, ssid: @wifi_network.ssid } }
    end

    assert_redirected_to wifi_network_url(WifiNetwork.last)
  end

  test "should show wifi_network" do
    get wifi_network_url(@wifi_network)
    assert_response :success
  end

  test "should get edit" do
    get edit_wifi_network_url(@wifi_network)
    assert_response :success
  end

  test "should update wifi_network" do
    patch wifi_network_url(@wifi_network), params: { wifi_network: { firmware_updates: @wifi_network.firmware_updates, password: @wifi_network.password, ssid: @wifi_network.ssid } }
    assert_redirected_to wifi_network_url(@wifi_network)
  end

  test "should destroy wifi_network" do
    assert_difference("WifiNetwork.count", -1) do
      delete wifi_network_url(@wifi_network)
    end

    assert_redirected_to wifi_networks_url
  end
end
