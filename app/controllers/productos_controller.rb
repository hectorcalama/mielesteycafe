class ProductosController < ApplicationController
    layout 'standard'

    def update
        @Productos = Producto.find(params[:id])
        if @Productos.update(producto_params)
            redirect_to webs_privado_path
        else
            render :edit
        end
    end

    def show
        @Productos = Producto.find(params[:id])
    end

    def edit
        @Productos = Producto.find(params[:id])
    end

    private
    def producto_params
        params.require(:producto).permit(:cod_producto, :nom_producto, :describe_producto, :categ_producto, :marca_producto, :imagen_producto, :cod_barra_producto, :inven_minimo, :precio_venta, :descto_especial, :vigencia_producto)
    end

end