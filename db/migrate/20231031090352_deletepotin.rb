class Deletepotin < ActiveRecord::Migration[7.0]
  def change
  drop_table :potins
  
  
  end
end
