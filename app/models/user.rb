# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  
  
  attr_accessible :name, :email, :password, :password_confirmation, 
                  :address, :disability, :disabled, :divorce, :dother, :father_status, 
                  :income, :marital_status, :mother_status, :occupation, :own, 
                  :parent_address, :father_age, :father_name, :photo, :mother_age, 
                  :mother_name, :parent_phone, :qualification, :reasons, :religion, 
                  :willing, :wother, :dob, :subcaste, :age, :passport_date, :passport_place
  
  has_secure_password
  has_many :microposts, dependent: :destroy
  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token
  before_create { generate_token(:remember_token) }
  
  validates :name,  presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  
  
  validates :address, presence: true, length: { maximum: 240 }
  validates :disability, presence: true, length: { maximum: 140 }
  validates :disabled, presence: true, length: { maximum: 140 }
  validates :divorce, presence: true, length: { maximum: 140 }
  validates :father_status, presence: true, length: { maximum: 140 }
  validates :income, presence: true, length: { maximum: 140 }
  validates :marital_status, presence: true, length: { maximum: 140 }
  validates :mother_status, presence: true, length: { maximum: 140 }
  validates :occupation, presence: true, length: { maximum: 140 }
  validates :own, presence: true, length: { maximum: 140 }
  validates :parent_address, presence: true, length: { maximum: 240 }
  validates :father_age, presence: true
  validates :father_name, presence: true, length: { maximum: 140 }
  validates :mother_age, presence: true
  validates :mother_name, presence: true, length: { maximum: 40 }
  validates :parent_phone, presence: true, length: { maximum: 15 }
  validates :qualification, presence: true, length: { maximum: 30 }
  validates :reasons, presence: true, length: { maximum: 140 }
  validates :religion, presence: true, length: { maximum: 140 }
  validates :willing, presence: true, length: { maximum: 140 }
  validates :wother, presence: true, length: { maximum: 140 }
  
  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!(:validate => false)
    UserMailer.password_reset(self).deliver
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
