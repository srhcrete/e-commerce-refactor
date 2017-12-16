require 'rails_helper'

describe User, 'validation' do
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of(:email).ignoring_case_sensitivity }
  it { should validate_presence_of :name }
  it { should validate_presence_of :password }
end

describe User, 'association' do
  it { should have_many :orders }
end

describe User, 'column_specification' do
  it { should have_db_column(:email).of_type(:string) }
  it { should have_db_column(:name).of_type(:string) }
  it { should have_db_column(:password_digest).of_type(:string) }
  it { should have_db_column(:admin).of_type(:boolean) }
  it { should have_db_column(:created_at).of_type(:datetime) }
  it { should have_db_column(:updated_at).of_type(:datetime) }
end
