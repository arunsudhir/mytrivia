class CreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes do |t|
      t.string :title
      t.integer :num_questions
      t.integer :duration
      t.string :categories

      t.timestamps
    end
    add_foreign_key :quizzes, :users, column: :createdby,  primary_key: "user_id"
  end
end
