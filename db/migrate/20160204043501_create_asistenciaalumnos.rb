class CreateAsistenciaalumnos < ActiveRecord::Migration
  def change
    create_table :asistenciaalumnos do |t|
      t.datetime :fecha
      t.string :estado
      t.references :estudiante, index: true
      t.references :horario, index: true

      t.timestamps
    end
  end
end
