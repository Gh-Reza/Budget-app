class User < ApplicationRecord
  has_many :categories
  has_many :purchases

  validate :name, presence: true
end
