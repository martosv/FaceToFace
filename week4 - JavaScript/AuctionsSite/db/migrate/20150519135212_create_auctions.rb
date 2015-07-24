class CreateAuctions < ActiveRecord::Migration
  def change
    create_table :auctions do |t|
    	t.integer :user_id
    	t.string :item
    	t.text :description
    	t.datetime :end_date
    	t.integer :price

      t.timestamps null: false
    end
  end
end
