class PurchaseCategory < ApplicationRecord
  belongs_to :purchase
  belongs_to :category

  validates :purchase_id, presence: true
  validates :category_id, presence: true
end
