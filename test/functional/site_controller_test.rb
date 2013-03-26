require 'test_helper'

class SiteControllerTest < ActionController::TestCase
  test "should get teams" do
    get :teams
    assert_response :success
  end

  test "should get tournaments" do
    get :tournaments
    assert_response :success
  end

  test "should get matches" do
    get :matches
    assert_response :success
  end

  test "should get results" do
    get :results
    assert_response :success
  end

end
