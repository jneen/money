class CreateReceipts < ActiveRecord::Migration
  def self.up
    create_table :receipts do |t|
      t.datetime :spent_at
      t.integer :pool_id
      t.integer :spender_id

      t.timestamps
    end

    add_index :receipts, [:pool_id, :spent_at]
    add_index :receipts, [:spender_id, :spent_at]
  end

  def self.down
    drop_table :receipts
  end
end
