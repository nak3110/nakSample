require 'test_helper'

class AnythingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get anythings_index_url
    assert_response :success
  end

  test "should get new" do
    get anythings_new_url
    assert_response :success
  end

end
