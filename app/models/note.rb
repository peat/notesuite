class Note < ApplicationRecord
  belongs_to :master
  belongs_to :grade, optional: true
  has_and_belongs_to_many :note_features, optional: true
end
