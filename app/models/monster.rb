class Monster < ApplicationRecord
  validates :name, presence: true
  validates :level, presence: true, numericality: true
  validates :attack, presence: true, numericality: true
  validates :defense, presence: true, numericality: true

  def self.search(search) #self.でクラスメソッドとしている
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Monster.where(['name LIKE ?', "%#{search}%"])
    else
      Monster.all #全て表示。
    end
  end
end