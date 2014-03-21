require 'spec_helper'

describe User do
  let!(:my_user) { FactoryGirl.create :user }
  context "validations" do
    it { should validate_presence_of :username }
    it { should validate_uniqueness_of :username }
    it { should validate_presence_of :email }
    it { should validate_uniqueness_of :email }
  end

  context "associations" do
    it { should have_many(:user_books) }
    it { should have_many(:books).through(:user_books) }
    it { should belong_to(:location) }
  end
end