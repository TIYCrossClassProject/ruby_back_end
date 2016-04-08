class AddAttachmentImageToImages < ActiveRecord::Migration
  def self.up
    remove_column :images, :image_file_name
    remove_column :images, :image_file_size
    remove_column :images, :image_content_type
    change_table :images do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :images, :image
  end
end
