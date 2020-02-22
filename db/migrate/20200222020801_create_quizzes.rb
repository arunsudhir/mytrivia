class CreateQuizzes < ActiveRecord::Migration[5.1]
  def change
    create_table :quizzes do |t|
      t.integer :id
      t.string :title
      t.string :createdby
      t.integer :num_questions
      t.datetime :creation_time
      t.integer :duration
      t.string :categories

      t.timestamps
    end
    add_index :quizzes, :createdby
  end
end
