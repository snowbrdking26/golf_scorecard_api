class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable, authentication_keys: [:name, :nickname, :email, password_length: 1..128]
  include DeviseTokenAuth::Concerns::User
end
