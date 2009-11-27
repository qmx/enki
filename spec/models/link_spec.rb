require 'spec_helper'

describe Link do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :url => "value for url",
      :enabled => false
    }
  end

  it "should create a new instance given valid attributes" do
    Link.create!(@valid_attributes)
  end
end
