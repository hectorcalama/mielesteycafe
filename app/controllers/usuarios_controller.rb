class UsuariosController < ApplicationController
  def new
  end

  def show
    @user = Usuario.find(params[:id])
    @productos = Producto.all
  end

  def edit
  end

end
