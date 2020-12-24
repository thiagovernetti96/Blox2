require 'test_helper'

class SalasControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get salas_controller_url
    assert_response :success
  end

end
