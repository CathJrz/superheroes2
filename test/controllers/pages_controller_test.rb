require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get batman" do
    get pages_batman_url
    assert_response :success
  end

end
