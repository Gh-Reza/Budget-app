class Purchase < ApplicationRecord
  belongs_to :user
  has_many :categories, through: :purchase_categories

  validate :name, presence: true
  validate :amount, presence: true
end
