# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_22_042233) do
  create_table "contactos", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email"
    t.text "mensaje"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "cod_producto"
    t.string "nom_producto"
    t.text "describe_producto"
    t.string "categ_producto"
    t.string "marca_producto"
    t.string "imagen_producto"
    t.string "cod_barra_producto"
    t.integer "inven_minimo"
    t.integer "precio_venta"
    t.integer "descto_especial"
    t.boolean "vigencia_producto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "ci_usuario"
    t.string "dv_usuario"
    t.string "nombre_usuario"
    t.string "apellidos_usuario"
    t.date "fechanac_usuario"
    t.string "telefono_usuario"
    t.string "email_usuario"
    t.string "imagen_usuario"
    t.string "domicilio_usuario"
    t.string "region_usuario"
    t.string "comuna_usuario"
    t.string "tipo_usuario"
    t.string "password_digest"
    t.boolean "vigencia_usuario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
