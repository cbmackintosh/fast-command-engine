class Post < ApplicationRecord
  belongs_to :incident
  scope :filter_by_incident, -> (incident_id) { where incident_id: incident_id }
  validates :title, presence: true
  validates :body, presence: true
end
