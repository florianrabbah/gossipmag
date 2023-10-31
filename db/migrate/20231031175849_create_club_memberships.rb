class CreateClubMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :club_memberships do |t|
      t.string :nom
      t.string :prenom
      t.string :email

      t.timestamps
    end
  end
end
