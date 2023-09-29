class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :products, dependent: :destroy
  enum role: {buyer: 1, seller: 0}
  has_one_attached :profile_image, dependent: :destroy
  has_one :cart, dependent: :destroy
  after_create :initialize_cart
  def initialize_cart
    Cart.create(user_id:id )
  end
end
