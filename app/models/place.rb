class Place < ApplicationRecord
  paginates_per 1
  belongs_to :user
  has_many :comments
  has_many :photos

  geocoded_by :address
  after_validation :geocode
  
  validates :name, :description, :address, presence: true
  validates :name, length: { minimum: 2}
end
