class CreateProductos < ActiveRecord::Migration[7.0]
  def change
    create_table :productos do |t|
      t.string :cod_producto
      t.string :nom_producto
      t.text :describe_producto
      t.string :categ_producto
      t.string :marca_producto
      t.string :imagen_producto
      t.string :cod_barra_producto
      t.integer :inven_minimo
      t.integer :precio_venta
      t.integer :descto_especial
      t.boolean :vigencia_producto

      t.timestamps
    end
  end
end
