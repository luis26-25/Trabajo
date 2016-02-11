class CreateAsistenciatrabajadors < ActiveRecord::Migration
  def change
    create_table :asistenciatrabajadors do |t|
      t.datetime :entrada
      t.datetime :salida
      t.string :estado
      t.references :trabajador, index: true
      t.references :horario, index: true

      t.timestamps
    end
  end
end
