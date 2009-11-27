require File.dirname(__FILE__) + '/../../../spec_helper'

describe "/admin/links/show.html.erb" do
  after(:each) do
    response.should be_valid_xhtml_fragment
  end

  it "should render" do
    assigns[:link] = Link.new(
      :name => 'A name',
      :url => 'http://some_url.com',
      :enabled => true
    )
    render '/admin/links/show.html.erb'
  end
end
