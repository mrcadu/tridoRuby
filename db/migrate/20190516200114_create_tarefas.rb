class CreateTarefas < ActiveRecord::Migration[6.0]
  def change
    create_table :tarefas do |t|
      t.references :equilibrio, null: false, foreign_key: true
      t.references :triade, null: false, foreign_key: true
      t.references :status_tarefa, null: false, foreign_key: true
      t.string :nome
      t.time :duracao
      t.date :data

      t.timestamps
    end
  end
end
