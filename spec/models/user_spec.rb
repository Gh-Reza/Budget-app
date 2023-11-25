require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user) }

  describe 'associations' do
    it { should have_many(:categories) }
    it { should have_many(:purchases) }
  end

  describe 'validations' do
    it 'is valid with valid attributes' do
      expect(user).to be_valid
    end
  end
end