class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :tweets, class_name: 'Tweet', foreign_key: 'author_id'
  
  has_many :followers_ids, class_name: 'Following', foreign_key: 'followed_id'
  has_many :followers, through: :followers_ids, source: 'follower'
  
  has_many :followeds_ids, class_name: 'Following', foreign_key: 'follower_id'
  has_many :followeds, through: :followeds_ids, source: 'following'

end
