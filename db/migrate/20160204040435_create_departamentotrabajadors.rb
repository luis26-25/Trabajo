class CreateDepartamentotrabajadors < ActiveRecord::Migration
  def change
    create_table :departamentotrabajadors do |t|
      t.references :departamento, index: true
      t.references :trabajador, index: true

      t.timestamps
    end
  end
end
