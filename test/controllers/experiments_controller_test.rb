require 'test_helper'

class ExperimentsControllerTest < ActionDispatch::IntegrationTest
  test "should get page1" do
    get experiments_page1_url
    assert_response :success
  end

  test "should get page2" do
    get experiments_page2_url
    assert_response :success
  end

  test "should get page3" do
    get experiments_page3_url
    assert_response :success
  end

end
