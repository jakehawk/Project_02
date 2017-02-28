class AddQtysToCard < ActiveRecord::Migration[5.0]
  def change
    add_column :cards, :qty, :integer
  end
end
