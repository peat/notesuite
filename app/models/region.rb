class Region < ApplicationRecord
  has_many :authorities
  has_many :printers
  has_many :currencies, through: :authorities

  default_scope { order(short_name: :asc) }

  validates :short_name, presence: true

  def note_count
    count = 0
    self.currencies.each do |c|
      c.notes.each do |n|
        count += 1
      end
    end
    count
  end
end
