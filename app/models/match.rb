class Match < ApplicationRecord
  has_many :user_matches, dependent: :destroy
end
