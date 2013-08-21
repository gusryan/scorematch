class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :name
      t.string :golfer1
      t.string :golfer2
      t.integer :score
      t.string :winner
      t.references :course, index: true

      t.timestamps
    end
  end
end
