class AddDescriptionToProject < ActiveRecord::Migration
  def change
  	add_column :projects, :new_description, :text
  end
end
