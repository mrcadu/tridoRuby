class CreateMetas < ActiveRecord::Migration[6.0]
  def change
    create_table :metas do |t|
      t.string :nome

      t.timestamps
    end
  end
end
