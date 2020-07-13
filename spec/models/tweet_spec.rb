require 'rails_helper'

RSpec.describe Tweet, type: :model do
  describe 'Associations' do
    it { should belong_to(:author).class_name('User').with_foreign_key('author_id') }
  end

  describe 'Validator' do
    subject do
      Tweet.create(content: 'lorem ipsum lorem ipsum lorem ipsum lorem ipsum lorem ipsum ', author_id: 1)
    end
    it { should validate_presence_of(:content) }
  end

end
