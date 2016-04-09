class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.integer :user_id
      t.integer :image_id
      t.string :field
      t.timestamps null: false
    end
  end
end
