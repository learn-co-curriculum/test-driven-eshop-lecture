class Review < ApplicationRecord
  belongs_to :reviewer, class_name: 'User', foreign_key: 'reviewer_id'
  belongs_to :product

  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: 0..5 }
end
