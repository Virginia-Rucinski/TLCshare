class CreateMedications < ActiveRecord::Migration[5.0]
  def change
    create_table :medications do |t|
      t.string :medication
      t.string :dose
      t.string :doctor
      t.string :treats
      t.text :frequency
      t.text :notes
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :user_id

      t.timestamps
    end
  end
end
