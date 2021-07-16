class Incident < ApplicationRecord
  belongs_to :user
  has_many :posts
  scope :filter_by_user, -> (user_id) { where user_id: user_id }

  before_create :slugify

  validates :name, presence:true
  validates :name, uniqueness:true
  validates :incident_type, presence:true
  validates :location, presence:true
  validates :summary, presence: true

  def slugify
    self.slug = name.parameterize
  end

end
