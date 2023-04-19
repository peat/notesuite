class Currency < ApplicationRecord
  belongs_to :authority
  has_many :masters
  has_many :overprinted_masters, class_name: 'Master', foreign_key: :overprint_currency_id

  validates :name, presence: true
  validates :authority, presence: true
end
