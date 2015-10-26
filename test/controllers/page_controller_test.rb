require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get forum" do
    get :forum
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get news" do
    get :news
    assert_response :success
  end

  test "should get recaps" do
    get :recaps
    assert_response :success
  end

  test "should get store" do
    get :store
    assert_response :success
  end

end
