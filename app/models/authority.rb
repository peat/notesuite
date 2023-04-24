class Authority < ApplicationRecord
  belongs_to :region
  has_many :currencies
  has_many :masters, through: :currencies

  default_scope { order(name: :asc) }

  validates :name, presence: true
  validates :region, presence: true

  def long_name
    "#{self.region.short_name} - #{self.name}"
  end
end
