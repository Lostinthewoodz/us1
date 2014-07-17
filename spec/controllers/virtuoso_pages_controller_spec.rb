require 'spec_helper'

describe VirtuosoPagesController do

  describe "GET 'luxury'" do
    it "returns http success" do
      get 'luxury'
      response.should be_success
    end
  end

end
