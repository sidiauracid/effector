class Effector < ApplicationRecord
  belongs_to :genre
  has_many :users, through: :cart
  has_many :carts
  has_many :confirms
end
