class Effector < ApplicationRecord
  belongs_to :genre
  has_many :carts
end
