class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :name 
      t.integer :age 
      t.integer :avg_speed
      t.integer :accuracy

      t.timestamps
    end
  end
end
