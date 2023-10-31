class StaticPagesController < ApplicationController
  def about
  end

  def contact
  end
  def top_geeks
    @potins = Gossip.all

  end
end
