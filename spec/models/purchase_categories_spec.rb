require 'rails_helper'

RSpec.describe PurchaseCategory, type: :model do
  describe 'associations' do
    it { should belong_to(:purchase) }
    it { should belong_to(:category) }
  end

  describe 'validations' do
    it { should validate_presence_of(:purchase_id) }
    it { should validate_presence_of(:category_id) }
  end
end