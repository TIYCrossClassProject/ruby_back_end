class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :user_id
      t.string :answer
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size

      t.timestamps null: false
    end
  end
end
