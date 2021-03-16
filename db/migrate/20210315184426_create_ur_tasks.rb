class CreateUrTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :ur_tasks do |t|
      t.references :teammate, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
