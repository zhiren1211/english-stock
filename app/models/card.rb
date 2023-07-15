# カードモデル
# 英単語の保存に使用する
class Card < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }
  validates :comment, length: { maximum: 255 }
end
