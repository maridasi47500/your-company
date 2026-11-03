require "test_helper"

class UupdatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uupdate = uupdates(:one)
  end

  test "should get index" do
    get uupdates_url
    assert_response :success
  end

  test "should get new" do
    get new_uupdate_url
    assert_response :success
  end

  test "should create uupdate" do
    assert_difference("Uupdate.count") do
      post uupdates_url, params: { uupdate: { schedule_restart: @uupdate.schedule_restart } }
    end

    assert_redirected_to uupdate_url(Uupdate.last)
  end

  test "should show uupdate" do
    get uupdate_url(@uupdate)
    assert_response :success
  end

  test "should get edit" do
    get edit_uupdate_url(@uupdate)
    assert_response :success
  end

  test "should update uupdate" do
    patch uupdate_url(@uupdate), params: { uupdate: { schedule_restart: @uupdate.schedule_restart } }
    assert_redirected_to uupdate_url(@uupdate)
  end

  test "should destroy uupdate" do
    assert_difference("Uupdate.count", -1) do
      delete uupdate_url(@uupdate)
    end

    assert_redirected_to uupdates_url
  end
end
