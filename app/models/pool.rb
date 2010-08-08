class Pool < ActiveRecord::Base
  has_many :pool_memberships
  has_many :members, :through => :pool_memberships, :class_name => 'User'
  has_many :receipts

  def amount
    line_items.select('sum(line_items.amount)')
  end

  def line_items
    LineItem.joins(:receipt).where(:receipt => {:pool_id => self.id})
  end

  def total_stake
    self.pool_memberships.select('sum(pool_memberships.stake)')
  end

  def dollars_per_stake_unit
    
  end
end
