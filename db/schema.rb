# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180214005134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accelerometers", force: :cascade do |t|
    t.integer "usuario_id"
    t.datetime "date_time"
    t.integer "x"
    t.float "y"
    t.float "z"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "geolocations", force: :cascade do |t|
    t.integer "usuario_id", null: false
    t.datetime "data_hora", null: false
    t.string "latitude", limit: 50, null: false
    t.string "longitude", limit: 50, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "video_id"
  end

  create_table "logs", force: :cascade do |t|
    t.integer "usuario_id", null: false
    t.datetime "time_stamp", null: false
    t.integer "tipo_log_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "duracao"
    t.integer "video_id"
  end

  create_table "perfils", force: :cascade do |t|
    t.string "nome", limit: 20, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playlists", force: :cascade do |t|
    t.string "nome", limit: 150, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "playlists_usuarios", id: false, force: :cascade do |t|
    t.bigint "playlist_id", null: false
    t.bigint "usuario_id", null: false
  end

  create_table "playlists_videos", id: false, force: :cascade do |t|
    t.bigint "playlist_id", null: false
    t.bigint "video_id", null: false
  end

  create_table "tipo_logs", force: :cascade do |t|
    t.string "nome", limit: 50, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome", limit: 150, null: false
    t.string "email", limit: 250, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.integer "perfil_id"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_senha_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string "nome", limit: 150, null: false
    t.string "url", limit: 255, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
