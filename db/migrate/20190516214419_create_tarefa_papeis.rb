class CreateTarefaPapeis < ActiveRecord::Migration[6.0]
  def change
    create_table :tarefa_papeis do |t|
      t.references :tarefa, null: false, foreign_key: true
      t.references :papel, null: false, foreign_key: true

      t.timestamps
    end
  end
end
