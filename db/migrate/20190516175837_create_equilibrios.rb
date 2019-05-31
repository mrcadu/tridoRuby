class CreateEquilibrios < ActiveRecord::Migration[6.0]
  def change
    create_table :equilibrios do |t|
      t.boolean :Mental
      t.boolean :Fisico
      t.boolean :Espiritual
      t.boolean :Emocional

      t.timestamps
    end
  end
end
