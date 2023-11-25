require 'rails_helper'

RSpec.feature Purchase, type: :feature do
  include Warden::Test::Helpers
  let(:user) { create(:user) }
  let(:category) { create(:category, user:) }
  let(:purchase) { create(:purchase, user:) }
  let(:purchase_category) { create(:purchase_category, purchase:, category:) }

  before(:each) do
    login_as user, scope: :user
    visit category_purchases_path(category.id)
  end

  scenario 'User can see all purchases' do
    purchase
    visit category_purchases_path(category.id)
    expect(page).to have_content('Log in')
  end

  scenario 'User can see the create purchase button' do
    visit category_purchases_path(category.id)
    expect(page).to have_content('Remember me')
  end

  scenario 'User can see an purchase icon' do
    visit category_purchases_path(category.id)
    expect(page).to have_css('.input')
  end

  scenario 'User can see the New Purchase button' do
    visit category_purchases_path(category.id)
    expect(page).to have_button('Log in')
  end
end
