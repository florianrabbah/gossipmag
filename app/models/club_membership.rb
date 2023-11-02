class ClubMembership < ApplicationRecord
  belongs_to :user
  validates :nom, presence: true
  validates :prenom, presence: true
  validates :email, presence: true, uniqueness: true
  validates :user_id, presence: true



end
