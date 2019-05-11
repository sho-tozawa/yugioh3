class Monster < ApplicationRecord
  validates :name, presence: true
  validates :level, presence: true, numericality: true
  validates :attack, presence: true, numericality: true
  validates :defense, presence: true, numericality: true
end
