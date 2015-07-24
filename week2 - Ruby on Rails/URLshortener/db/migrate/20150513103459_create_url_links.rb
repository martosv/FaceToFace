class CreateUrlLinks < ActiveRecord::Migration
  def change
    create_table :url_links do |t|
    	t.integer :visits, default: 0
    	t.string :url

        t.timestamps null: false
    end
  end
end
