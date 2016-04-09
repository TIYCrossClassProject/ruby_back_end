class Image < ActiveRecord::Base
  belongs_to :user

  has_attached_file :logo
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/

  validates_attachment_file_name :logo, matches: [/png\Z/, /jpe?g\Z/]
  do_not_validate_attachment_file_type :logo
  validates_presence_of :user_id
end
