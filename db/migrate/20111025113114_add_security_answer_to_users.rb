class AddSecurityAnswerToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :encrypted_security_answer,:string
  end

  def self.down
    remove_column :users, :encrypted_security_answer
  end
end
