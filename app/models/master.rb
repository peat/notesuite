class Master < ApplicationRecord
  belongs_to :currency
  belongs_to :overprint_currency, class_name: 'Currency', foreign_key: :overprint_currency_id, optional: true
  belongs_to :printer, optional: true
  has_and_belongs_to_many :master_features, optional: true
  belongs_to :material, optional: true

  validates :currency, presence: true
  validates :denomination, presence: true
end
