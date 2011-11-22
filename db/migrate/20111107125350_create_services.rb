class CreateServices < ActiveRecord::Migration
  def self.up
    create_table :services do |t|
        t.string :service_type
        t.string :service_name
        t.string :desc

      t.timestamps
    end
  end

  def self.down
    drop_table :services
  end
end
