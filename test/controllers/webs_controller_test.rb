require "test_helper"

class WebsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get webs_home_url
    assert_response :success
  end

  test "should get somos" do
    get webs_somos_url
    assert_response :success
  end

  test "should get mieles" do
    get webs_mieles_url
    assert_response :success
  end

  test "should get cafes" do
    get webs_cafes_url
    assert_response :success
  end

  test "should get tes" do
    get webs_tes_url
    assert_response :success
  end

  test "should get snacks" do
    get webs_snacks_url
    assert_response :success
  end

  test "should get accesorios" do
    get webs_accesorios_url
    assert_response :success
  end

  test "should get ropa" do
    get webs_ropa_url
    assert_response :success
  end

  test "should get descubre" do
    get webs_descubre_url
    assert_response :success
  end

  test "should get privado" do
    get webs_privado_url
    assert_response :success
  end
end
