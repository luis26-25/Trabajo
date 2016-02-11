class CreateTurnos < ActiveRecord::Migration
  def change
    create_table :turnos do |t|
      t.string :descripcion
      t.time :hora_inicio
      t.time :hora_fin

      t.timestamps
    end
  end
end
