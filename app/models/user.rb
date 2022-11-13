# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist
  # devise :database_authenticatable, :registerable,
  #       #  :recoverable, :rememberable, :validatable,
  #       #  :confirmable, :lockable, :timeoutable, :trackable,
  #        :jwt_authenticatable, jwt_revocation_strategy: ::JwtDenylist
end
