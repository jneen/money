class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.primary_key :id
      t.string :name, :max_length => 64
      t.string :email, :max_length => 64

      t.integer :fbuid

      t.timestamps

    end

    add_index :users, :fbuid, :unique => true
  end

  def self.down
    drop_table :users
  end
end
