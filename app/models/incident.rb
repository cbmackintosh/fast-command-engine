class Incident < ApplicationRecord
  belongs_to :user
  has_many :posts
  scope :filter_by_user, -> (user_id) { where user_id: user_id }

  before_create :slugify

  def slugify
    self.slug = name.parameterize
  end

end
