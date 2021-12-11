class Like < ApplicationRecord
  belongs_to :meal
  belongs_to :user
  validates_uniqueness_of :meal_id, scope: :user_id
end
