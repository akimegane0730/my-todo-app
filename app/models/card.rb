class Card < ApplicationRecord
  belongs_to :list
  has_many :likes, -> { order(created_at: :desc) }, dependent: :destroy

  validates :title, length: { in: 1..10 }
  validates :memo,  length: { maximum: 50 }
end
