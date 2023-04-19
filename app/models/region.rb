class Region < ApplicationRecord
  has_many :authorities
  has_many :printers

  validates :short_name, presence: true
end
