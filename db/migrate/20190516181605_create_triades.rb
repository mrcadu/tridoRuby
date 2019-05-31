class CreateTriades < ActiveRecord::Migration[6.0]
  def change
    create_table :triades do |t|
      t.boolean :Circunstancial
      t.boolean :Importante
      t.boolean :Urgente

      t.timestamps
    end
  end
end
