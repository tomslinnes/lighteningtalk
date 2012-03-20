require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get play" do
    get :play
    assert_response :success
  end

  test "should get playwithstats" do
    get :playwithstats
    assert_response :success
  end

  test "should get playwithstats1" do
    get :playwithstats1
    assert_response :success
  end

end
