class MasterFeature < ApplicationRecord
    has_and_belongs_to_many :masters

    validates :name, presence: true
end
