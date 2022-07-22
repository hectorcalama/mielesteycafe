class CreateUsuarios < ActiveRecord::Migration[7.0]
  def change
    create_table :usuarios do |t|
      t.integer :ci_usuario
      t.string :dv_usuario
      t.string :nombre_usuario
      t.string :apellidos_usuario
      t.date :fechanac_usuario
      t.string :telefono_usuario
      t.string :email_usuario
      t.string :imagen_usuario
      t.string :domicilio_usuario
      t.string :region_usuario
      t.string :comuna_usuario
      t.string :tipo_usuario
      t.string :password_digest
      t.boolean :vigencia_usuario

      t.timestamps
    end
  end
end
