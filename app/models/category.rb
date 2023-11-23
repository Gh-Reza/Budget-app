class Category < ApplicationRecord
  belongs_to :user
  has_many :purchases, through: :purchase_categories

  validates :name, presence: true
  validates :icon, presence: true
end
