require 'rails_helper'

RSpec.describe Subject, type: :model do
  context 'validation tests' do
    
    it 'ensures subject is valid' do
      user = User.create(id: 1, name: 'username')
      subject = user.subjects.new(name: 'gimp design').save
      expect(subject).to eq(true)
    end

    it 'ensures name is present' do
      user = User.create(name: 'username')
      subject = user.subjects.new(name: nil).save
      expect(subject).to eq(false)
    end

    it 'ensures name is not too long' do
      user = User.create(name: 'username')
      subject = user.subjects.new(name: 'a' * 50).save
      expect(subject).to eq(false)
    end
  end
end
