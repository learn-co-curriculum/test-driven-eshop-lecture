class User < ApplicationRecord
    has_many :reviews, inverse_of: 'reviewer', dependent: :destroy

    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true
end
