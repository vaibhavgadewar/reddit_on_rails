require 'spec_helper'

describe User do
  it "has a valid factory" do
    build(:user).should be_valid
  end
  it "is invalid without an email" do
    build(:user, email: nil).should_not be_valid
  end
  it "has a valid factory" do
    create(:user).should be_valid
  end
  #it "is invalid without an email" do
  #  create(:user, email: nil).should_not be_valid
  #end
end