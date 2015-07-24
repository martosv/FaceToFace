class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name

      t.timestamps null: false # timestamps es la fecha de creacion
    end
  end
end
