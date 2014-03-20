require 'spec_helper'

describe Book do
  context "validations" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :author }
    it { should allow_value('1234567891234').for(:isbn) }
    it { should_not allow_value('2542423').for(:isbn) }
  end

  context "associations" do
    it { should have_many(:user_books) }
    it { should have_many(:users).through(:user_books) }
  end
end