# frozen_string_literal: true

class Following < ApplicationRecord
  belongs_to :follower, class_name: 'User', foreign_key: 'follower_id'
  belongs_to :following, class_name: 'User', foreign_key: 'followed_id'

  validates_uniqueness_of :followed_id, scope: :followed_id
end
