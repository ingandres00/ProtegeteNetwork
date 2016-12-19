require 'test_helper'

class UserTest < ActiveSupport::TestCase

     test "un usario debería dar su primer nombre" do
       user = User.new
       assert !user.save
       assert !user.errors[:nombre_usuario].empty?
     end
     test "un usario debería dar su primer apellido" do
       user = User.new
       assert !user.save
       assert !user.errors[:apellido_usuario].empty?
     end
     test "un usario debería dar su apodo" do
       user = User.new
       assert !user.save
       assert !user.errors[:apodo].empty?
     end

     test "un usuario debería tener su apodo único con perfil" do
       user = User.new
       user.apodo = "Mi nombre con Espacios"

       assert !user.save
       assert !user.error(:apodo).empty?
       assert user.errors[:apodo].include?("Debe estar formateado correctamente")

     end
end
