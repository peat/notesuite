class Grade < ApplicationRecord
  has_many :notes

  # no validations here; this is static data that gets loaded with the seed
end
