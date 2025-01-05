class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum :role, { general: 0, admin: 1 }

  has_one :score, dependent: :destroy
  has_one :user_match, dependent: :destroy
end
