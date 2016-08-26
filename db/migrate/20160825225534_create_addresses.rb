class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :business
      t.string :address
      t.string :phone
      t.string :email
      t.string :website
      t.text :notes
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :user_id

      t.timestamps
    end
  end
end
