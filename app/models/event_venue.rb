class EventVenue < ApplicationRecord
  has_many :events
  validates :address, :presence => true
  validates :address, :length => {minimum: 1}
  validates :name, :presence => true
  validates :name, :length => {minimum: 1}
  validates :capacity, numericality: { only_integer: true, greater_than_or_equal_to: 10 }

end
