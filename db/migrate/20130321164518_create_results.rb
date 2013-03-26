class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :Name
      t.integer :Standings
      t.decimal :Spirit

      t.timestamps
    end
  end
end
