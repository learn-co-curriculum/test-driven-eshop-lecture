class Product < ApplicationRecord
    has_many :reviews, dependent: :destroy

    validates :name, :description, presence: true
end
