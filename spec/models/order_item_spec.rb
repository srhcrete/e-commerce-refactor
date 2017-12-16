require 'rails_helper'

describe OrderItem, 'validation' do
  it { should validate_presence_of :quantity}
  it { should validate_presence_of :product_id }
end
