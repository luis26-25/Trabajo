class CreateEstudiantes < ActiveRecord::Migration
  def change
    create_table :estudiantes do |t|
      t.string :dni
      t.text :codigo_modular
      t.string :nombre
      t.string :paterno
      t.string :materno
      t.string :telefono
      t.string :direccion
      t.string :colegio_procedencia
      t.integer :orden_merito
      t.string :lugar_nacimiento
      t.string :sexo
      t.string :promocion
      t.string :estado
      t.references :departamento, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
