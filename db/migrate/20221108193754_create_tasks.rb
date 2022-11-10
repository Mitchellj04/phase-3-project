class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.text :description 
      t.string :hours 
      t.integer :pay
      t.date :due_date
      t.integer :project_id
      t.integer :client_id
      t.timestamps
    end
  end
end
