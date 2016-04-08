class AddAttachmentAvatarToImages < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
      t.attachment :avatar
    end
    remove_column :images, :url
  end

  def self.down
    remove_attachment :images, :avatar
    add_column :images, :url, :string    
  end
end
