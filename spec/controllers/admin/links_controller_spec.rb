require File.dirname(__FILE__) + '/../../spec_helper'

describe Admin::LinksController do
  describe "handling GET to index" do
    before(:each) do
      @links = [mock_model(Link), mock_model(Link)]
      Link.stub!(:paginate).and_return(@links)
      session[:logged_in] = true
      get :index
    end
  
    it "is successful" do
      response.should be_success
    end
    
    it "renders index template" do
      response.should render_template('index')
    end

    it "finds links for the view" do
      assigns[:links].should == @links
    end
  end
end
