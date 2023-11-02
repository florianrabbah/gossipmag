class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_secure_password

  validates :password, presence: true, length: { minimum: 6 }
  has_many :gossips
  has_many :club_memberships, dependent: :destroy
end




