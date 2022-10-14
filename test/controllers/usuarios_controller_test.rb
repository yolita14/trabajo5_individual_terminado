require "test_helper"

class UsuariosControllerTest < ActionDispatch::IntegrationTest
  test "should get mostrar" do
    get usuarios_mostrar_url
    assert_response :success
  end
end
