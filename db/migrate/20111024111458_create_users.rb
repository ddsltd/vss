class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :encrypted_passwords
      t.string :salt
      t.string :encrypt_answer
      t.integer :security_question

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
