class Image < ActiveRecord::Base
  belongs_to :user
  has_many :answers

  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :answer, presence: true

  validates_presence_of :user_id
end
