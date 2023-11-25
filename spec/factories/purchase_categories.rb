FactoryBot.define do
  factory :purchase_category do
    association :category
    association :purchase
  end
end