class CreateMatches < ActiveRecord::Migration[8.0]
  def change
    create_table :matches do |t|
      t.integer :match_number
      t.datetime :start_time
      t.datetime :endtime

      t.timestamps
    end
  end
end
