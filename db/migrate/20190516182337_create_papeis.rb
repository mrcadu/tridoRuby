class CreatePapeis < ActiveRecord::Migration[6.0]
  def change
    create_table :papeis do |t|
      t.string :nome

      t.timestamps
    end
  end
end
