require 'rails_helper'

describe OrderItem, 'validation' do
  it { should validate_presence_of :quantity}
  it { should validate_presence_of :product_id }
end

describe OrderItem, 'association' do
  it { should belong_to :order }
  it { should belong_to :product }
end
