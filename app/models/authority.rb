class Authority < ApplicationRecord
  belongs_to :region
  has_many :currencies

  validates :name, presence: true
  validates :region, presence: true
end
