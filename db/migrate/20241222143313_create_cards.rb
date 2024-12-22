class CreateCards < ActiveRecord::Migration[8.0]
  def change
    create_table :cards do |t|
      t.text :card_text
      t.integer :card_flag

      t.timestamps
    end
  end
end
