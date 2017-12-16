require 'rails_helper'

describe Order, 'validation' do
  it { should validate_presence_of :total_price }
  it { should validate_presence_of :status }
end

describe Order, 'association' do
  it { should have_many :order_items }
  it { should belong_to :user }
end
