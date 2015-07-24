class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
    	t.string :name
    	t.string :age
    	t.string :genre
    	t.string :species
    	t.string :photo
    	t.string :job
    	t.string :food
    	t.string :code

      t.timestamps null: false
    end
  end
end
