class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :provider
      t.string :uid
      t.integer :role
      t.string :email
      t.text :prefs
      t.string :facebook_id
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone_no

      t.timestamps
    end
  end
end
