class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :style_id
      t.integer :user_id
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
