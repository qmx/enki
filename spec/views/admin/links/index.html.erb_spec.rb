require 'spec_helper'

describe "/admin/links/index.html.erb" do
  include LinksHelper

  before(:each) do
    assigns[:links] = [
      stub_model(Link,
        :name => "value for name",
        :url => "value for url",
        :enabled => false
      ),
      stub_model(Link,
        :name => "value for name",
        :url => "value for url",
        :enabled => false
      )
    ]
  end

  it "renders a list of links" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for url".to_s, 2)
    response.should have_tag("tr>td", false.to_s, 2)
  end
end
