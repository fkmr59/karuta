class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :score, dependent: :destroy
  has_one :user_match, dependent: :destroy

  enum role: { general: 1, admin: 2 }
end
