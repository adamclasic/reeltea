require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:followers_ids).with_foreign_key('followed_id').class_name('Following') }
    it { should have_many(:followers).through(:followers_ids).source(:follower) }

    it { should have_many(:followeds_ids).with_foreign_key('follower_id').class_name('Following') }
    it { should have_many(:followeds).through(:followers_ids).source(:following) }
  end

  describe 'validations' do
    subject { User.create(name: 'good user', username: 'good_user') }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:username) }
  end
end
