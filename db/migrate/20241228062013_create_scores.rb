class CreateScores < ActiveRecord::Migration[8.0]
  def change
    create_table :scores do |t|
      t.references :user_id, null: false, foreign_key: true
      t.integer :point

      t.timestamps
    end
  end
end
