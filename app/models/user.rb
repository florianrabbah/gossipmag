class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  

  has_many :gossips
  has_many :club_memberships, dependent: :destroy
end




