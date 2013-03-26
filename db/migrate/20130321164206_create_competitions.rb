class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :Name
      t.date :date

      t.timestamps
    end
  end
end
