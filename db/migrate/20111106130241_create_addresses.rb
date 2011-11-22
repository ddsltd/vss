class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :ad_typ
      t.string :addr1
      t.string :addr2
      t.string :state
      t.string :city
      t.string :country
      t.string :state
      t.string :prim_contact
      t.string :email
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
