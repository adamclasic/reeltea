class Following < ApplicationRecord
  belongs_to :follower, class_name: 'User', foreign_key: 'follower_id'
  belongs_to :following, class_name: 'User', foreign_key: 'followed_id'

  validates_uniqueness_of :user_name, scope: :account_id


end
