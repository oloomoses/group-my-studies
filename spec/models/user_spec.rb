require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation tests' do
    it 'Ensures username is present' do
      user = User.new(name: nil).save
      expect(user).to eq(false)
    end

    it 'ensures user is valid' do
      user = User.new(name: 'username').save
      expect(user).to eq(true)
    end

    it 'ensures user name is Unique' do
      user = User.create!(name: 'username')
      user = User.new(name: 'username').save
      expect(user).to eq(false)
    end

    it 'ensures user name is not more than 20 characters' do
      user = User.new(name: 'a' * 21).save
      expect(user).to eq(false)
    end
  end
end
