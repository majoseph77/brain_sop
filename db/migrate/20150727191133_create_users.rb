class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :userName
      t.string :password
      t.string :password_confirmation
      t.string :password_digest
      t.string :determineStyle

      t.integer :course_id
      t.integer :vocabulary_id

      t.timestamps null: false
    end
  end
end
