class CreateStatistics < ActiveRecord::Migration[6.0]
  def change
    create_table :statistics do |t|
      t.integer :user_id
      t.integer :challenge_id
      t.integer :speed
      t.integer :accuracy

      t.timestamps
    end
  end
end
