class User < ActiveRecord::Base
  has_many :pool_memberships
  has_many :pools, :through => :pool_memberships
  has_many :receipts

  def stake_in(pool)
    pool.pool_memberships.where(:member_id => self.id).project(:stake)
  end

  def net(pool)
    return false unless pool.members.exists(:member_id => self.id)

    stake_in(pool) * pool.dollars_per_stake_unit
  end

  def line_items(pool=nil)
    lis = LineItem.joins(:receipt).where(:receipt => {:spender_id => self.id})

    pool ? lis.where(:receipt => {:pool_id => pool.id}) : lis
  end
end
