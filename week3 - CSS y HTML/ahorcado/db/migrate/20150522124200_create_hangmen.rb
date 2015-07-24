class CreateHangmen < ActiveRecord::Migration
  def change
    create_table :hangmen do |t|
    	t.string :word
    	t.string :suggestion
    	t.integer :lives, default: 6

      t.timestamps null: false
    end
  end
end
