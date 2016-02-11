class CreateHorarios < ActiveRecord::Migration
  def change
    create_table :horarios do |t|
      t.time :inicio
      t.time :fin
      t.integer :dia
      t.references :turno, index: true
      t.references :curso, index: true

      t.timestamps
    end
  end
end
