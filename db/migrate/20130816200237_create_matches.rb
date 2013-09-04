class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :name
      t.string :golfer1_id
      t.string :golfer2_id
      t.integer :score
      t.integer :result
      t.references :course, index: true
      t.timestamps
    end
  end
end
