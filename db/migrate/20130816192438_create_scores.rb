class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :golfer_id
      t.integer :hole_id
      t.integer :match_id
      t.integer :stroke

      t.timestamps
    end
  end
end
