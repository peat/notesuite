class Note < ApplicationRecord
  belongs_to :master
  belongs_to :grade, optional: true
  belongs_to :replaced_by, class_name: 'Note', foreign_key: :replaced_by_id, optional: true
  has_and_belongs_to_many :note_features, optional: true
end
