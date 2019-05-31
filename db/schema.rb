# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_16_214419) do

  create_table "equilibrios", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.boolean "Mental"
    t.boolean "Fisico"
    t.boolean "Espiritual"
    t.boolean "Emocional"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "metas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "papeis", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "status_tarefas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome"
    t.string "codigo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tarefa_metas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "tarefa_id", null: false
    t.bigint "meta_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["meta_id"], name: "index_tarefa_metas_on_meta_id"
    t.index ["tarefa_id"], name: "index_tarefa_metas_on_tarefa_id"
  end

  create_table "tarefa_papeis", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "tarefa_id", null: false
    t.bigint "papel_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["papel_id"], name: "index_tarefa_papeis_on_papel_id"
    t.index ["tarefa_id"], name: "index_tarefa_papeis_on_tarefa_id"
  end

  create_table "tarefas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "equilibrio_id", null: false
    t.bigint "triade_id", null: false
    t.bigint "status_tarefa_id", null: false
    t.string "nome"
    t.time "duracao"
    t.date "data"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["equilibrio_id"], name: "index_tarefas_on_equilibrio_id"
    t.index ["status_tarefa_id"], name: "index_tarefas_on_status_tarefa_id"
    t.index ["triade_id"], name: "index_tarefas_on_triade_id"
  end

  create_table "triades", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.boolean "Circunstancial"
    t.boolean "Importante"
    t.boolean "Urgente"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "tarefa_metas", "metas"
  add_foreign_key "tarefa_metas", "tarefas"
  add_foreign_key "tarefa_papeis", "papeis"
  add_foreign_key "tarefa_papeis", "tarefas"
  add_foreign_key "tarefas", "equilibrios"
  add_foreign_key "tarefas", "status_tarefas"
  add_foreign_key "tarefas", "triades"
end
