class AddUserIdToClubMemberships < ActiveRecord::Migration[7.0]
  def change
    add_reference :club_memberships, :user, null: false, foreign_key: true, default: 1 
  end
end
