class Monster < ApplicationRecord
  validates :name, presence: true
  validates :level, presence: true
  validates :attack, presence: true
  validates :defense, presence: true
end
