class Order < ApplicationRecord
  has_many :order_items
  belongs_to :user, optional: true

  before_save :update_total

  validates :total_price, :presence => true
  validates :status, :presence => true

  def calculate_total
    self.order_items.collect { |item| item.product.price * item.quantity }.sum
  end

  def finalize(user)
    self.user_id = user.id
    self.status = 2
    self.save
  end

  private

  def update_total
    self.total_price = calculate_total
  end
end
