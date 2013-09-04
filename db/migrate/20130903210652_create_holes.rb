class CreateHoles < ActiveRecord::Migration
  def change
    create_table :holes do |t|
      t.integer :hole_number
      t.string :par
      t.integer :yardage
      t.integer :handicap
      t.integer :stroke
      t.integer :hole_winner
      t.references :course, index: true

      t.timestamps
    end
  end
end
