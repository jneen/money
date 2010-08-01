class Receipt < ActiveRecord::Base
  belongs_to :pool
  belongs_to :user
  has_many :line_items
end
