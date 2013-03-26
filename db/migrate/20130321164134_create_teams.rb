class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :Name
      t.string :image

      t.timestamps
    end
  end
end
