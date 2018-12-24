require 'test_helper'

class CheckNControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get check_n_index_url
    assert_response :success
  end

  test "should get yes" do
    get check_n_yes_url
    assert_response :success
  end

  test "should get no" do
    get check_n_no_url
    assert_response :success
  end

end
