require 'spec_helper'

describe ResourcePagesController do

  describe "GET 'agents'" do
    it "returns http success" do
      get 'agents'
      response.should be_success
    end
  end

  describe "GET 'travelers'" do
    it "returns http success" do
      get 'travelers'
      response.should be_success
    end
  end

end
