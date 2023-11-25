FactoryBot.define do
  factory :user do
    name { 'John Doe' }
    email { 'email@gmail.com' }
    password { '123456' }
    password_confirmation { '123456' }
  end
end
