class Monster < ApplicationRecord
  validates :name, presence: true
  validates :level, presence: true, numericality: true
  validates :attack, presence: true, numericality: true
  validates :defense, presence: true, numericality: true

  #self.でクラスメソッドとしている
  def self.search(search)
    # 検索パラメータが存在する場合に検索処理を実行する
    if search
      Monster.where('name LIKE ?', "%#{search[:name]}%")
             .where(level: search[:level])
    else
      #全て表示
      Monster.all
    end
  end
end
