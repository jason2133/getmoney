require 'test_helper'

class FreepostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @freepost = freeposts(:one)
  end

  test "should get index" do
    get freeposts_url
    assert_response :success
  end

  test "should get new" do
    get new_freepost_url
    assert_response :success
  end

  test "should create freepost" do
    assert_difference('Freepost.count') do
      post freeposts_url, params: { freepost: { content: @freepost.content, title: @freepost.title } }
    end

    assert_redirected_to freepost_url(Freepost.last)
  end

  test "should show freepost" do
    get freepost_url(@freepost)
    assert_response :success
  end

  test "should get edit" do
    get edit_freepost_url(@freepost)
    assert_response :success
  end

  test "should update freepost" do
    patch freepost_url(@freepost), params: { freepost: { content: @freepost.content, title: @freepost.title } }
    assert_redirected_to freepost_url(@freepost)
  end

  test "should destroy freepost" do
    assert_difference('Freepost.count', -1) do
      delete freepost_url(@freepost)
    end

    assert_redirected_to freeposts_url
  end
end
