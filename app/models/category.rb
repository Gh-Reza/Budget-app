class Category < ApplicationRecord
  belongs_to :user
  has_many :purchases, through: :purchase_categories

  validate :name, presence: true
  validate :icon, presence: true
end
