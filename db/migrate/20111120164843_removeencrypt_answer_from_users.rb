class RemoveencryptAnswerFromUsers < ActiveRecord::Migration
  def self.up
     remove_column :users, :encrypt_answer
  end

  def self.down
    add_column :users, :encrypt_answer,:string
  end
end
