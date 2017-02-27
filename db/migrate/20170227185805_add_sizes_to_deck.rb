class AddSizesToDeck < ActiveRecord::Migration[5.0]
  def change
    add_column :decks, :size, :integer
  end
end
