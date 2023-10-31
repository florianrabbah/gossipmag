class GossipsController < ApplicationController
  before_action :set_gossip, only: [:show, :edit, :update, :destroy]

  def index
    @gossips = Gossip.all
  end

  def show
  
  puts params
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)
    @gossip.user = User.create(name: params[:gossip][:name])


    if @gossip.save
      redirect_to gossips_path, notice: 'Gossip créé avec succès!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @gossip.update(gossip_params)
      redirect_to gossips_path, notice: 'Gossip mis à jour avec succès!'
    else
      render :edit
    end
  end

  def destroy
    @gossip.destroy
    redirect_to gossips_path, notice: 'Gossip supprimé avec succès!'
  end

  def shared_gossips
    @gossips = Gossip.all
  end

  private

  def set_gossip
    @gossip = Gossip.find(params[:id])
  end


    def gossip_params
      params.require(:gossip).permit(:title, :content)
    end
    
  
end