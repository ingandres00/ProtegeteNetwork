require 'test_helper'

class RutasPersonalizadasTest < ActionDispatch::IntegrationTest

  test "el /login abre la página de inicio de sesión" do
    get '/empezar'
    assert_response :success
  end

  test "el /logout abre la página de cerrar sesión" do
    get '/destruir'
    assert_response :success
    assert_redirected_to '/'
  end

  test "el /registrar abre la página registrar el usuario" do
    get '/registrar'
    assert_response :success
  end
end
