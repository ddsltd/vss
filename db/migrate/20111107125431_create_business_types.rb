class CreateBusinessTypes < ActiveRecord::Migration
  def self.up
    create_table :business_types do |t|
        t.string :business_type
        t.string :business_name
        t.string :desc

      t.timestamps
    end
  end

  def self.down
    drop_table :business_types
  end
end
