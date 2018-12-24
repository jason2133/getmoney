require 'test_helper'

class PostNsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_n = post_ns(:one)
  end

  test "should get index" do
    get post_ns_url
    assert_response :success
  end

  test "should get new" do
    get new_post_n_url
    assert_response :success
  end

  test "should create post_n" do
    assert_difference('PostN.count') do
      post post_ns_url, params: { post_n: { date: @post_n.date, etc: @post_n.etc, title: @post_n.title } }
    end

    assert_redirected_to post_n_url(PostN.last)
  end

  test "should show post_n" do
    get post_n_url(@post_n)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_n_url(@post_n)
    assert_response :success
  end

  test "should update post_n" do
    patch post_n_url(@post_n), params: { post_n: { date: @post_n.date, etc: @post_n.etc, title: @post_n.title } }
    assert_redirected_to post_n_url(@post_n)
  end

  test "should destroy post_n" do
    assert_difference('PostN.count', -1) do
      delete post_n_url(@post_n)
    end

    assert_redirected_to post_ns_url
  end
end
