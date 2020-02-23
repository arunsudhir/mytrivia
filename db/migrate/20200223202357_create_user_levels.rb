class CreateUserLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :user_levels do |t|
      t.string :level

      t.timestamps
    end
  end
end
