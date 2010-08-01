class CreatePoolMemberships < ActiveRecord::Migration
  def self.up
    create_table :pool_memberships do |t|
      t.integer :user_id
      t.integer :pool_id

      t.integer :stake, :default => 1

      t.timestamps
    end

    add_index :pool_memberships, :user_id
    add_index :pool_memberships, :pool_id
  end

  def self.down
    drop_table :pool_memberships
  end
end
