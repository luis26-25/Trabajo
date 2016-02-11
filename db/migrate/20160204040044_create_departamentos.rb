class CreateDepartamentos < ActiveRecord::Migration
  def change
    create_table :departamentos do |t|
      t.string :nombre
      t.text :descripcion
      t.references :trabajador, index: true

      t.timestamps
    end
  end
end
