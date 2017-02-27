class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.references :deck, foreign_key: true
      t.string :name
      t.integer :cmc
      t.string :color
      t.integer :wCount
      t.integer :bCount
      t.integer :uCount
      t.integer :rCount
      t.integer :gCount
      t.boolean :multiColor
      t.boolean :main

      t.timestamps
    end
  end
end
