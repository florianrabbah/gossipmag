class AddTitleToGossips < ActiveRecord::Migration[7.0]
  def change
    add_column :gossips, :title, :string
  end
end
