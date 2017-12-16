require 'rails_helper'

describe Order, 'validation' do
  it { should validate_presence_of :total_price }
  it { should validate_presence_of :status }
end

describe Order, 'association' do
  it { should have_many :order_items }
  it { should belong_to :user }
end

describe Order, 'column_specification' do
  it { should have_db_column(:user_id).of_type(:integer) }
  it { should have_db_column(:status).of_type(:integer) }
  it { should have_db_column(:total_price).of_type(:decimal) }
  it { should have_db_column(:created_at).of_type(:datetime) }
  it { should have_db_column(:updated_at).of_type(:datetime) }
end
