class Event < ApplicationRecord
  belongs_to :event_venue
  has_one :event_stat
end
