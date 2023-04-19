class Material < ApplicationRecord
  has_many :masters

  validates :name, presence: true
end
