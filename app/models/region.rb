class Region < ApplicationRecord
  has_many :authorities
  has_many :printers
  has_many :currencies, through: :authorities

  validates :short_name, presence: true
end
