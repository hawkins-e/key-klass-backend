class CreateChallenges < ActiveRecord::Migration[6.0]
  def change
    create_table :challenges do |t|
      t.string :challenge_name
      t.string :challenge_photo_url
      t.string :learning_blurb

      t.timestamps
    end
  end
end
