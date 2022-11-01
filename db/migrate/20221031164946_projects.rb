class Projects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :name 
      t.integer :timeframe 
      t.string :category
      t.integer :client_id
      t.integer :task_id
      t.timestamps
    end
  end
end
