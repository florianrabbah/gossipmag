class Potin < ApplicationRecord

  def self.top_geeks_method
    # Logique pour récupérer les potins des geeks célèbres
      Potin.where(category: 'geek').limit(5)
  end


end
