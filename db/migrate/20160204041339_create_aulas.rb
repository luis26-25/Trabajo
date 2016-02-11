class CreateAulas < ActiveRecord::Migration
  def change
    create_table :aulas do |t|
      t.integer :numero

      t.timestamps
    end
  end
end
