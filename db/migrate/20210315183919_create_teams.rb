class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :department
      t.string :leader

      t.timestamps
    end
  end
end
