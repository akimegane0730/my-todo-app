class Card < ApplicationRecord
  belongs_to :list

  validates :title, length: { in: 1..10 }
  validates :memo,  length: { maximum: 50 }
end
