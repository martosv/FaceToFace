class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
    	t.integer :user_id
    	t.integer :auction_id
    	t.float :bidding

      t.timestamps null: false
    end
  end
end
