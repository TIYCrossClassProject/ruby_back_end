class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :image_id
      t.string :answer

      t.timestamps null: false
    end
  end
end
