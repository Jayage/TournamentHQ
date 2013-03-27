class CreateSpiritScores < ActiveRecord::Migration
  def change
    create_table :spirit_scores do |t|
      t.string :TeamName
      t.decimal :Spirit1
      t.decimal :Spirit2
      t.decimal :Spirit3
      t.decimal :Spirit4

      t.timestamps
    end
  end
end
