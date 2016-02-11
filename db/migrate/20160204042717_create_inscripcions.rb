class CreateInscripcions < ActiveRecord::Migration
  def change
    create_table :inscripcions do |t|
      t.datetime :fecha
      t.references :estudiante, index: true
      t.references :curso, index: true

      t.timestamps
    end
  end
end
