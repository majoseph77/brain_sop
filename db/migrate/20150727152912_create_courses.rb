class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name
      t.integer :num_chapter
      t.integer :section_id


      t.timestamps null: false
    end
  end
end
