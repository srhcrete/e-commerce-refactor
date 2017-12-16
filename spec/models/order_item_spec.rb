require 'rails_helper'

describe OrderItem, 'validation' do
  it { should validate_presence_of :quantity}
  it { should validate_presence_of :product_id }
end

describe OrderItem, 'association' do
  it { should belong_to :order }
  it { should belong_to :product }
end

describe OrderItem, 'column_specification' do
  it { should have_db_column(:quantity).of_type(:integer) }
  it { should have_db_column(:product_id).of_type(:integer) }
  it { should have_db_column(:order_id).of_type(:integer) }
  it { should have_db_column(:created_at).of_type(:datetime) }
  it { should have_db_column(:updated_at).of_type(:datetime) }
end
