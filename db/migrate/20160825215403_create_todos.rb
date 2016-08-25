class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :description
      t.boolean :completed
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :user_id

      t.timestamps
    end
  end
end
