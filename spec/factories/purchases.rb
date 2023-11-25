# spec/factories/purchases.rb
FactoryBot.define do
  factory :purchase do
    association :user
    name { 'MyPurchase' }
    amount { 11 }

    transient do
      categories_count { 3 }
    end

    trait :with_categories do
      after(:create) do |purchase, evaluator|
        categories = create_list(:category, evaluator.categories_count, user: purchase.user)
        purchase.categories << categories
      end
    end
  end
end
