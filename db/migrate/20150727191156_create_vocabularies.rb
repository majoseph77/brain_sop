class CreateVocabularies < ActiveRecord::Migration
  def change
    create_table :vocabularies do |t|
      t.string :word
      t.string :definition
      t.string :topic

      t.integer :user_id

      t.timestamps null: false
    end
  end
end
