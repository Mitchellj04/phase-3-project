class Clients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :contact
      t.string :manager 
      t.timestamps
    end


  end
end
