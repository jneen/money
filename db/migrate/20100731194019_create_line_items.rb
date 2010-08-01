class CreateLineItems < ActiveRecord::Migration
  def self.up
    create_table :line_items do |t|
      t.string :description
      t.integer :receipt_id
      t.float :amount, :scale => 2

      t.timestamps
    end

    add_index :line_items, :receipt_id
  end

  def self.down
    drop_table :line_items
  end
end
