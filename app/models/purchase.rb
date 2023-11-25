class Purchase < ApplicationRecord
  belongs_to :user
  has_many :purchase_categories
  has_many :categories, through: :purchase_categories

  has_one_attached :icon

  validates :name, presence: true
  validates :amount, presence: true
end
