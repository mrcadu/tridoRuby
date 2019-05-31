class CreateStatusTarefas < ActiveRecord::Migration[6.0]
  def change
    create_table :status_tarefas do |t|
      t.string :nome
      t.string :codigo

      t.timestamps
    end
  end
end
