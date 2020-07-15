class Tweet < ApplicationRecord
  has_one_attached :image
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  validates :content, presence: true, length: { maximum: 50 }
end
