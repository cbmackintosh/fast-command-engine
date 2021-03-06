class Contact < ApplicationRecord
  belongs_to :user
  scope :filter_by_user, -> (user_id) { where user_id: user_id }
  scope :filter_by_incident, -> (incident_id) { where incident_id: incident_id }

  validates :contact_type, presence:true
  validates :name, presence:true
  validates :jobtitle, presence:true
  validates :point_of_contact, presence: true
  validates :point_of_contact_title, presence: true
  validates :organization, presence: true
  validates :phone, presence: true
  validates :phone, length: { is: 12 }
  validates :email, presence: true
  validates :email, uniqueness: true
end
