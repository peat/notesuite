class Master < ApplicationRecord
  belongs_to :currency
  belongs_to :overprint_currency, class_name: 'Currency', foreign_key: :overprint_currency_id, optional: true
  belongs_to :printer, optional: true
  has_and_belongs_to_many :master_features, optional: true
  belongs_to :material, optional: true
  has_many :notes

  validates :currency, presence: true
  validates :denomination, presence: true

  def full_name
    region = self.currency.authority.region

    "#{self.denomination} #{region.short_name} #{self.currency.name}"
  end
end
