require 'test_helper'

class EffectorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get effectors_index_url
    assert_response :success
  end

end
