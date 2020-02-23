class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :mediaUrl
      t.string :mediaType
      t.string :answer1
      t.string :answer2
      t.string :answer3
      t.integer :rightanswer

      t.timestamps
    end
    add_foreign_key :questions, :categories, column: :category,  primary_key: "category_id"
    add_foreign_key :questions, :users, column: :createdby,  primary_key: "user_id"
  end
end
