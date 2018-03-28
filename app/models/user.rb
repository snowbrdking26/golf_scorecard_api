class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable, authentication_keys: [:name, :nickname, :email]
  include DeviseTokenAuth::Concerns::User
  # has_many :scorecards
  # has_many :golfers, through: :scorecards
  # has_many :golfers
end
