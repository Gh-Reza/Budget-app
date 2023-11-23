class Purchase < ApplicationRecord
  belongs_to :user
  has_many :categories, through: :purchase_categories

  validates :name, presence: true
  validates :amount, presence: true
end
