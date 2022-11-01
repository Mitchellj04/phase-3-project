class Taks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.text :description 
      t.string :hours 
      t.integer :pay
      t.date :due_date
      t.timestamps
    end
  end
end
