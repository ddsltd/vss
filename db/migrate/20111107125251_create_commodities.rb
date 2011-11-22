class CreateCommodities < ActiveRecord::Migration
  def self.up
    create_table :commodities do |t|
      t.string :commodity_type
      t.string :commodity_name
      t.string :desc
      

      t.timestamps
    end
  end

  def self.down
    drop_table :commodities
  end
end
