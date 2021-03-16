class CreateTeammates < ActiveRecord::Migration[6.1]
  def change
    create_table :teammates do |t|
      t.string :name
      t.string :password_digest
      t.integer :points
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
