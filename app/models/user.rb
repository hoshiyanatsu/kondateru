class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :meals, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liked_meals, through: :likes, source: :meal
  validates :name, presence: true
  validates :profile, length: {maximum: 200}

  mount_uploader :avatar, AvatarUploader

  def already_liked?(meal)
    self.likes.exists?(meal_id: meal.id)
  end
end
