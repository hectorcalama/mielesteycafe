class WebsController < ApplicationController
  layout 'standard'
  
  def home
  end

  def somos
  end

  def mieles
    @productos = Producto.where categ_producto: "miel"
  end

  def cafes
    @productos = Producto.where categ_producto: "cafe"
  end

  def tes
    @productos = Producto.where categ_producto: "te"
  end

  def snacks
    @productos = Producto.where categ_producto: "snack"
  end

  def accesorios
    @productos = Producto.where categ_producto: "accesorio"
  end

  def ropa
    @productos = Producto.where categ_producto: "ropa"
  end

  def descubre
  end

  def privado
    @productos = Producto.all
#    @usuarios = Usuario.all
    @user = Usuario.where tipo_usuario: "Admin"
  end

end
