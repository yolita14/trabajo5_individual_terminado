class UsuariosController < ApplicationController
  def mostrar 
    @usuario= current_usuario
  end
end
