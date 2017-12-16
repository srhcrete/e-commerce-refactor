require 'rails_helper'

describe User, 'validation' do
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of(:email).ignoring_case_sensitivity }
  it { should validate_presence_of :name }
  it { should validate_presence_of :password }
end
