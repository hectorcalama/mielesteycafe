class BuscarsController < ApplicationController

  def create
    palabra1 = "%#{params[:keyword]}%"
    palabra2 = "%#{params[:keyword]}%"
    palabra3 = params[:keyword]

    @productos = Producto.where("nom_producto like ? or marca_producto like ? or describe_producto like ?",palabra1,palabra2,palabra3)

  end

end
