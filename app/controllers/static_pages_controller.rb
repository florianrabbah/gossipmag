class StaticPagesController < ApplicationController
  def about
  end

  def contact
  end
  def top_geeks
    @potins = Potin.top_geeks_method 

  end
end
