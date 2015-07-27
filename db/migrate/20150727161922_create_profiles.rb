class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.text :learning_style
      t.text :user_id
      t.text :course_id

      t.timestamps null: false
    end
  end
end
