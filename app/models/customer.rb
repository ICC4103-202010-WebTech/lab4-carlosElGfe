
class Customer < ApplicationRecord
  has_many :orders
  has_many :tickets, through: :orders
  validates :email, :uniqueness => true
  validates :email, :presence => true
  validates :name, :presence => true
  validates :lastname, :presence => true
  """validates :name, :length => { :minimum => 1}
  validates :lastname, :length => { :minimum => 1}"""
  validates :email, format: {with: /\A([^@\s]+)@((?:[-a-z0-9]+.)+[a-z]{2,})\z/i, message:"the mail must follow the format"}
end
