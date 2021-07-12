class Contact < ApplicationRecord
  belongs_to :user
  scope :filter_by_user, -> (user_id) { where user_id: user_id }
  scope :filter_by_incident, -> (incident_id) { where incident_id: incident_id }
end
