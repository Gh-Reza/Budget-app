require 'rails_helper'

RSpec.feature 'Categories', type: :feature do
  include Warden::Test::Helpers
  let(:user) { create(:user) }
  let(:category) { create(:category, user:) }
  let(:purchase) { create(:purchase, user:) }
  let(:purchase_category) { create(:purchase_category, purchase:, category:) }

  before(:each) do
    login_as user, scope: :user
    visit categories_path
  end

  scenario 'User can see all categories' do
    category
    visit categories_path
    expect(page).to have_content('Log in')
  end

  scenario 'User can see the create category button' do
    visit categories_path
    expect(page).to have_content('Remember me')
  end

  scenario 'User can see an category icon' do
    visit categories_path
    expect(page).to have_css('.input')
  end
end
