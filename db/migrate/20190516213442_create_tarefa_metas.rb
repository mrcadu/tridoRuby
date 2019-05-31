class CreateTarefaMetas < ActiveRecord::Migration[6.0]
  def change
    create_table :tarefa_metas do |t|
      t.references :tarefa, null: false, foreign_key: true
      t.references :meta, null: false, foreign_key: true
      t.timestamps
    end
  end
end
