class Monster < ApplicationRecord
  validates :name, presence: true
  validates :level, presence: true, numericality: true
  validates :attack, presence: true, numericality: true
  validates :defense, presence: true, numericality: true

  scope :search, lambda { |search_params|
    return if search_params.blank?

    name_like(search_params[:name])
      .attack_from(search_params[:attack_from])
      .attack_to(search_params[:attack_to])
      .defense_from(search_params[:defense_from])
      .defense_to(search_params[:defense_to])
      .monster_level_is(search_params[:monster_level])
  }
  scope :name_like, ->(name) { where('name LIKE ?', "%#{name}%") if name.present? }
  scope :attack_from, ->(from) { where('? <= attack', from) if from.present? }
  scope :attack_to, ->(to) { where('attack <= ?', to) if to.present? }
  scope :defense_from, ->(from) { where('? <= defense', from) if from.present? }
  scope :defense_to, ->(to) { where('defense <= ?', to) if to.present? }
  scope :monster_level_is, ->(monster_level) { where(monster_level: monster_level) if monster_level.present? }
end
