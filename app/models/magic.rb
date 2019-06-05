class Magic < ApplicationRecord
  validates :name, presence: true
  validates :effect, presence: true

  # self.でクラスメソッドとしている
  def self.search(search)
    if search # Controllerから渡されたパラメータが!= nilの場合は、titleカラムを部分一致検索
      Magic.where(['name LIKE ?', "%#{search}%"])
    else
      Magic.all # 全て表示。
    end
  end
end
