class User < ApplicationRecord
  has_secure_password
  has_many :orders

  validates :email, :presence => true
  validates :email, :uniqueness => true
  validates :name, :presence => true
  validates :password, :presence => true
  
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "60x60>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def previous_orders
    self.orders.where(status: 2).includes(order_items: :product)
  end
end
