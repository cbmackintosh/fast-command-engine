class User < ApplicationRecord
  has_many :incidents
  has_secure_password
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :jobtitle, presence: true
  validates :organization, presence: true
  validates :phone, presence: true
  validates :phone, length: { is: 12 }
  validates :email, presence: true
  validates :email, uniqueness: true
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
end
