class Magic < ApplicationRecord
  validates :name, presence: true
  validates :effect, presence: true
end
