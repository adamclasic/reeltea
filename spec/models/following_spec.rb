require 'rails_helper'

RSpec.describe Following, type: :model do
  describe 'Associations' do
    it { should belong_to(:follower).class_name('User').with_foreign_key('follower_id') }
    it { should belong_to(:following).class_name('User').with_foreign_key('followed_id') }
  end
end
