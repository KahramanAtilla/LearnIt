require 'test_helper'

class KitUiControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get kit_ui_index_url
    assert_response :success
  end

end
