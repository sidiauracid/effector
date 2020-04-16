class Confirm < ApplicationRecord
  belongs_to :effector
  belongs_to :user
end
