# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160204043622) do

  create_table "asistenciaalumnos", force: true do |t|
    t.datetime "fecha"
    t.string   "estado"
    t.integer  "estudiante_id"
    t.integer  "horario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "asistenciaalumnos", ["estudiante_id"], name: "index_asistenciaalumnos_on_estudiante_id"
  add_index "asistenciaalumnos", ["horario_id"], name: "index_asistenciaalumnos_on_horario_id"

  create_table "asistenciatrabajadors", force: true do |t|
    t.datetime "entrada"
    t.datetime "salida"
    t.string   "estado"
    t.integer  "trabajador_id"
    t.integer  "horario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "asistenciatrabajadors", ["horario_id"], name: "index_asistenciatrabajadors_on_horario_id"
  add_index "asistenciatrabajadors", ["trabajador_id"], name: "index_asistenciatrabajadors_on_trabajador_id"

  create_table "aulas", force: true do |t|
    t.integer  "numero"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cursos", force: true do |t|
    t.string   "codigo"
    t.string   "nombre"
    t.integer  "capacidad"
    t.integer  "cantidad_inscritos"
    t.text     "descripcion"
    t.string   "tipo"
    t.string   "semestre"
    t.date     "inicio"
    t.date     "fin"
    t.integer  "trabajador_id"
    t.integer  "aula_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cursos", ["aula_id"], name: "index_cursos_on_aula_id"
  add_index "cursos", ["trabajador_id"], name: "index_cursos_on_trabajador_id"

  create_table "departamentos", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "trabajador_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "departamentos", ["trabajador_id"], name: "index_departamentos_on_trabajador_id"

  create_table "departamentotrabajadors", force: true do |t|
    t.integer  "departamento_id"
    t.integer  "trabajador_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "departamentotrabajadors", ["departamento_id"], name: "index_departamentotrabajadors_on_departamento_id"
  add_index "departamentotrabajadors", ["trabajador_id"], name: "index_departamentotrabajadors_on_trabajador_id"

  create_table "estudiantes", force: true do |t|
    t.string   "dni"
    t.text     "codigo_modular"
    t.string   "nombre"
    t.string   "paterno"
    t.string   "materno"
    t.string   "telefono"
    t.string   "direccion"
    t.string   "colegio_procedencia"
    t.integer  "orden_merito"
    t.string   "lugar_nacimiento"
    t.string   "sexo"
    t.string   "promocion"
    t.string   "estado"
    t.integer  "departamento_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "estudiantes", ["departamento_id"], name: "index_estudiantes_on_departamento_id"
  add_index "estudiantes", ["user_id"], name: "index_estudiantes_on_user_id"

  create_table "horarios", force: true do |t|
    t.time     "inicio"
    t.time     "fin"
    t.integer  "dia"
    t.integer  "turno_id"
    t.integer  "curso_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "horarios", ["curso_id"], name: "index_horarios_on_curso_id"
  add_index "horarios", ["turno_id"], name: "index_horarios_on_turno_id"

  create_table "inscripcions", force: true do |t|
    t.datetime "fecha"
    t.integer  "estudiante_id"
    t.integer  "curso_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "inscripcions", ["curso_id"], name: "index_inscripcions_on_curso_id"
  add_index "inscripcions", ["estudiante_id"], name: "index_inscripcions_on_estudiante_id"

  create_table "trabajadors", force: true do |t|
    t.string   "dni"
    t.text     "codigo_modular"
    t.string   "nombre"
    t.string   "paterno"
    t.string   "materno"
    t.string   "telefono"
    t.string   "especialidad"
    t.string   "grado"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "trabajadors", ["user_id"], name: "index_trabajadors_on_user_id"

  create_table "turnos", force: true do |t|
    t.string   "descripcion"
    t.time     "hora_inicio"
    t.time     "hora_fin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "permission_level"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
