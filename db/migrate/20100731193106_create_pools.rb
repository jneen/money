class CreatePools < ActiveRecord::Migration
  def self.up
    create_table :pools do |t|
      t.string :slug, :null => false

      t.string :name, :null => false

      t.timestamps
    end

    add_index :pools, :slug, :unique => true
  end

  def self.down
    drop_table :pools
  end
end
