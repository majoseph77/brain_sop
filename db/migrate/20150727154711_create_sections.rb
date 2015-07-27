class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :topic
      t.string :video_uri
      t.text :vocab
      t.text :quiz
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
