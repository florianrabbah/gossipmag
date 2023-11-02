class AddColumnsToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :title, :string, null: false
    add_column :articles, :content, :text, null: false
  end
end
