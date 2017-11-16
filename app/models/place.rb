class Place < ApplicationRecord
  paginates_per 1
  belongs_to :user
  validates :name, presence: true
end
