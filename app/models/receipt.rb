class Receipt < ActiveRecord::Base
  belongs_to :pool
  belongs_to :user
  has_many :line_items

  def amount
    self.line_items.sum(:amount)
  end
end
