class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.string :status
      t.date :due_date
      t.string :notes

      t.timestamps
    end
  end
end
