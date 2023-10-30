class CreateGossips < ActiveRecord::Migration[7.0]
  def change
    create_table :gossips do |t|
      t.references :user, null: false, foreign_key: true
      t.text :content
      t.integer :year
      
      t.timestamps
    end
  end
end
