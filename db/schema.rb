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

ActiveRecord::Schema.define(version: 20180530232634) do

  create_table "contatos", force: :cascade do |t|
    t.integer "trabalhador_id"
    t.string "telefone"
    t.string "celular"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["trabalhador_id"], name: "index_contatos_on_trabalhador_id"
  end

  create_table "funcionarios", force: :cascade do |t|
    t.string "nome"
    t.string "matricula"
    t.string "nascimento"
    t.string "sexo"
    t.string "civil"
    t.string "cidade"
    t.string "estado"
    t.integer "workspace_id"
    t.integer "job_role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_role_id"], name: "index_funcionarios_on_job_role_id"
    t.index ["workspace_id"], name: "index_funcionarios_on_workspace_id"
  end

  create_table "job_roles", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trabalhadors", force: :cascade do |t|
    t.string "nome"
    t.string "matricula"
    t.string "nascimento"
    t.string "sexo"
    t.string "civil"
    t.string "cidade"
    t.string "estado"
    t.string "workspace"
    t.string "job_role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workspaces", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
