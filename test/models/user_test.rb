require "test_helper"

class UserTest < ActiveSupport::TestCase
  # Test para verificar que un usuario con nombre y email es válido
  test "usuario válido con nombre y email" do
    user = User.new(name: "Alejandro", email: "test@example.com")
    assert user.valid?, "El usuario debería ser válido"
  end

  # Test para verificar que un usuario sin email no es válido
  test "usuario inválido sin email" do
    user = User.new(name: "Alejandro", email: "")
    assert_not user.valid?, "El usuario no debería ser válido sin email"
  end

  # Test para verificar que un usuario sin nombre no es válido
  test "usuario inválido sin nombre" do
    user = User.new(name: "", email: "test@example.com")
    assert_not user.valid?, "El usuario no debería ser válido sin nombre"
  end
end
