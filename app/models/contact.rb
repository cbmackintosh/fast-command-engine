class Contact < ApplicationRecord
  belongs_to :incident
  belongs_to :user
end
