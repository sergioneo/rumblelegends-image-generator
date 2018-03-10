require 'test_helper'

class ImageControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get image_view_url
    assert_response :success
  end

end
