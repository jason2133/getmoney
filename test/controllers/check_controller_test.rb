require 'test_helper'

class CheckControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get check_index_url
    assert_response :success
  end

  test "should get yes" do
    get check_yes_url
    assert_response :success
  end

  test "should get no" do
    get check_no_url
    assert_response :success
  end

end
