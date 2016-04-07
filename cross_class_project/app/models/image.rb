class Image < ActiveRecord::Base
  validates :url, presence: true, uniqueness: true
    format: {
      with: /http:\/\/.+\.+/||/https:\/\/.+\.+/
      message: "must include http:// or https:// followed by the site name a period and a filetype"
    }
  validates :answer, presence: true
end
