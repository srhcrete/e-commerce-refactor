require 'rails_helper'

describe Product, 'validation' do
  it { should validate_presence_of :price }
  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
end
