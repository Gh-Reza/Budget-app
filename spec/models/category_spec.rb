require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:purchase_categories) }
    it { should have_many(:purchases).through(:purchase_categories) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
  end
end
