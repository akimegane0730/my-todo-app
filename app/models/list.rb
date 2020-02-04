class List < ApplicationRecord

  belongs_to :user
  has_many :cards, dependent: :destroy

  validates :date, length: { in: 1..10 }
end
