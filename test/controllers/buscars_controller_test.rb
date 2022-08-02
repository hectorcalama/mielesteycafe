require "test_helper"

class BuscarsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get buscars_create_url
    assert_response :success
  end
end
