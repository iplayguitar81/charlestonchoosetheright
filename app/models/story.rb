class Story < ActiveRecord::Base
  attr_accessor :image
  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end

