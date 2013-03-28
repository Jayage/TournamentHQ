require 'test_helper'

class SiteControllerTest < ActionController::TestCase
  test "should get spirit" do
    get :spirit
    assert_response :success
  end

end
