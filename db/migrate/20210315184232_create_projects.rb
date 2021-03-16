class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :notes
      t.integer :priority
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
