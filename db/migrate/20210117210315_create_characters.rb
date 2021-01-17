class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string "character_name"
      t.string "password_digest"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "encounter"
      t.string "personality"
      t.string "good_point"
      t.string "respect_point"
      t.text "episode"
      t.text "appreciation"
      t.string "profile_author"
      t.text "appreciation_from_bride"
      t.timestamps
    end
  end
end
