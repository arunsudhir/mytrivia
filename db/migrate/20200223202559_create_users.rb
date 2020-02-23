class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :points
      t.integer :quizzes_created
      t.integer :quizzes_played

      t.timestamps
    end
    add_foreign_key :users, :user_levels, column: :level,  primary_key: "user_level_id"
  end
end
