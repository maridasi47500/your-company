require "test_helper"

class CompanymessagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @companymessage = companymessages(:one)
  end

  test "should get index" do
    get companymessages_url
    assert_response :success
  end

  test "should get new" do
    get new_companymessage_url
    assert_response :success
  end

  test "should create companymessage" do
    assert_difference("Companymessage.count") do
      post companymessages_url, params: { companymessage: { company_id: @companymessage.company_id, content: @companymessage.content, employee_id: @companymessage.employee_id, pic: @companymessage.pic } }
    end

    assert_redirected_to companymessage_url(Companymessage.last)
  end

  test "should show companymessage" do
    get companymessage_url(@companymessage)
    assert_response :success
  end

  test "should get edit" do
    get edit_companymessage_url(@companymessage)
    assert_response :success
  end

  test "should update companymessage" do
    patch companymessage_url(@companymessage), params: { companymessage: { company_id: @companymessage.company_id, content: @companymessage.content, employee_id: @companymessage.employee_id, pic: @companymessage.pic } }
    assert_redirected_to companymessage_url(@companymessage)
  end

  test "should destroy companymessage" do
    assert_difference("Companymessage.count", -1) do
      delete companymessage_url(@companymessage)
    end

    assert_redirected_to companymessages_url
  end
end
