class CreateContactos < ActiveRecord::Migration[7.0]
  def change
    create_table :contactos do |t|
      t.string :email
      t.text :mensaje

      t.timestamps
    end
  end
end
