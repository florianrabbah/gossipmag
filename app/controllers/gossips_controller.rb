class GossipsController < ApplicationController


  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def top_geeks
    @top_geeks = Geek.order(:rank).limit(5)
    @potins = Potin.top_geeks_method
  end
  

end
