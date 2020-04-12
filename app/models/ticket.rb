class Ticket < ApplicationRecord
  belongs_to :order
  belongs_to :ticket_type
  before_save :update_stats
  public
    def update_stats
      es = self.ticket_type.event.event_stat.tickets_sold
      if es > self.ticket_type.event.event_venue.capacity
        self.errors.add(:ticket_type, "cannot create ticket becouse the event is at max capacity")
      else
        valuee = self.ticket_type.event.event_stat.tickets_sold + 1
      self.ticket_type.event.event_stat.update_attribute(tickets_sold, valuee)
      end
      end
end
