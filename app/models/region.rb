class Region < ApplicationRecord
  has_many :authorities
  has_many :printers
  has_many :currencies, through: :authorities

  default_scope { order(name: :desc) }

  validates :short_name, presence: true
end
