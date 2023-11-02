# app/controllers/club_memberships_controller.rb
class ClubMembershipsController < ApplicationController
  
  def new_club
    @club_membership = ClubMembership.new
   
  end

  def create
    @club_membership = ClubMembership.new(club_membership_params)
    @club_membership.user_id = current_user.id 
    if @club_membership.save
      redirect_to club_memberships_path, notice: 'Inscription au club réussie!'
    else
      render :new_club
    end
  end

  def index
    @club_memberships = ClubMembership.all
  end

  private

  def club_membership_params
    params.require(:club_membership).permit(:nom, :prenom, :email)
  end
end

def create
  @club_membership = ClubMembership.new(club_membership_params)
  @club_membership.user_id = current_user.id # Assurez-vous de définir correctement user_id
  if @club_membership.save
    redirect_to club_memberships_path, notice: 'Inscription au club réussie!'
  else
    render :new_club
  end
end
