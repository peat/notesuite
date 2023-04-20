class Authority < ApplicationRecord
  belongs_to :region
  has_many :currencies
  has_many :masters, through: :currencies

  validates :name, presence: true
  validates :region, presence: true
end
