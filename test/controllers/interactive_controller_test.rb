require 'test_helper'

class InteractiveControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get interactive_page_url
    assert_response :success
  end

end
