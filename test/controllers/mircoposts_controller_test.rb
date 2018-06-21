require 'test_helper'

class MircopostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mircopost = mircoposts(:one)
  end

  test "should get index" do
    get mircoposts_url
    assert_response :success
  end

  test "should get new" do
    get new_mircopost_url
    assert_response :success
  end

  test "should create mircopost" do
    assert_difference('Mircopost.count') do
      post mircoposts_url, params: { mircopost: { content: @mircopost.content, user_id: @mircopost.user_id } }
    end

    assert_redirected_to mircopost_url(Mircopost.last)
  end

  test "should show mircopost" do
    get mircopost_url(@mircopost)
    assert_response :success
  end

  test "should get edit" do
    get edit_mircopost_url(@mircopost)
    assert_response :success
  end

  test "should update mircopost" do
    patch mircopost_url(@mircopost), params: { mircopost: { content: @mircopost.content, user_id: @mircopost.user_id } }
    assert_redirected_to mircopost_url(@mircopost)
  end

  test "should destroy mircopost" do
    assert_difference('Mircopost.count', -1) do
      delete mircopost_url(@mircopost)
    end

    assert_redirected_to mircoposts_url
  end
end
