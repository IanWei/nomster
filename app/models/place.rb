class Place < ApplicationRecord
  paginates_per 1
  belongs_to :user
  validates :name, :description, :address, presence: true
  validates :name, length: { minimum: 2}
end
