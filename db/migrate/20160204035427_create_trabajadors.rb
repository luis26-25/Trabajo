class CreateTrabajadors < ActiveRecord::Migration
  def change
    create_table :trabajadors do |t|
      t.string :dni
      t.text :codigo_modular
      t.string :nombre
      t.string :paterno
      t.string :materno
      t.string :telefono
      t.string :especialidad
      t.string :grado
      t.references :user, index: true

      t.timestamps
    end
  end
end
