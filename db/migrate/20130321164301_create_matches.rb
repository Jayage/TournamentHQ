class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.string :Team1
      t.string :Team2
      t.integer :Score

      t.timestamps
    end
  end
end
