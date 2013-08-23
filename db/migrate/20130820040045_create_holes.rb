class CreateHoles < ActiveRecord::Migration
  def change
    create_table :holes do |t|
      t.integer :hole_number
      t.integer :par
      t.integer :handicap
      t.integer :yardage
      t.references :course, index: true

      t.timestamps
    end
  end
end
