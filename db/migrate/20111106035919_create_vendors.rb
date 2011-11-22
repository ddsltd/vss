class CreateVendors < ActiveRecord::Migration
  def self.up
    create_table :vendors do |t|
      t.string :user
      t.string :lgl_nm
      t.string :first_nm
      t.string :last_nm
      t.string :classification
      t.string :Tin
      t.string :Tin_Typ
      t.string :lgl_addr1
      t.string :lgl_addr2
      t.string :state
      t.string :city
      t.string :country
      t.string :zip
      t.boolean :primay_acct
      t.string :pnt_acct

      t.timestamps
    end
  end

  def self.down
    drop_table :vendors
  end
end
