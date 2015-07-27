class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name
      t.string :quiz
      t.string :video_uri

      t.integer :course_id


      t.timestamps null: false
    end
  end
end
