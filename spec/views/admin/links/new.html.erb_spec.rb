require 'spec_helper'

describe "/admin/links/new.html.erb" do
  after(:each) do
    response.should be_valid_xhtml_fragment
  end

  it 'should render' do
    assigns[:link] = Link.new
    render '/admin/links/new.html.erb'
  end

end
