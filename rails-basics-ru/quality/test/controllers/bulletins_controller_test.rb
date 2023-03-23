require "test_helper"

class BulletinsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bulletins_index_url
    assert_response :success
  end

  test "should get show" do
    get bulletins_show_url
    assert_response :success
  end
end
