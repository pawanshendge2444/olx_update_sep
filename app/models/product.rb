class Product < ApplicationRecord
  belongs_to :user
  has_one_attached :image, dependent: :destroy
  has_many :cart_items, dependent: :destroy
end
