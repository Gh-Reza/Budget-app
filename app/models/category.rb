class Category < ApplicationRecord
  belongs_to :user
  has_many :purchase_categories
  has_many :purchases, through: :purchase_categories

  has_one_attached :icon

  validates :name, presence: true
  validates :icon, presence: true

  def total_purchases
    total = 0
    purchases.each do |purchase|
      total += purchase.amount
    end
    total
  end
end
