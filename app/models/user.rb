class User < ActiveRecord::Base
  has_many :pool_memberships
  has_many :pools, :through => :pool_memberships
  has_many :receipts
end
