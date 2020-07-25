class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.string :goal_name
      t.text :goal_description
      t.string :goal_timeline
      t.references :topic, null: false, foreign_key: true

      t.timestamps
    end
  end
end
