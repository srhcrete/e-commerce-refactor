class Product < ApplicationRecord
  has_many :order_items

  validates :price, :presence => true
  validates :name, :presence => true
  validates :description, :presence => true

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "60x60>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/

end
