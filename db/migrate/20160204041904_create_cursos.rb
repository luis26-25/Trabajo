class CreateCursos < ActiveRecord::Migration
  def change
    create_table :cursos do |t|
      t.string :codigo
      t.string :nombre
      t.integer :capacidad
      t.integer :cantidad_inscritos
      t.text :descripcion
      t.string :tipo
      t.string :semestre
      t.date :inicio
      t.date :fin
      t.references :trabajador, index: true
      t.references :aula, index: true

      t.timestamps
    end
  end
end
