class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :section_name
      t.integer :num_sections

      t.integer :user_id
      t.integer :section_id

      t.timestamps null: false
    end
  end
end
