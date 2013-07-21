class Micropost < ActiveRecord::Base
  attr_accessible :content, :image

  belongs_to :user
  mount_uploader :image, ImageUploader

  validates :image, presence: true
  validates :user_id, presence: true

  validate :image_size_validation, :if => "image?"  

  def image_size_validation
    errors[:image] << "should be less than 1MB" if image.size > 5.megabytes
  end

  default_scope order: 'microposts.created_at DESC'
end