class Crop < ApplicationRecord
  validates :name, :variety, presence: true
end
