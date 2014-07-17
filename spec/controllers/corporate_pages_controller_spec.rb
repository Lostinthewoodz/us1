require 'spec_helper'

describe CorporatePagesController do

  describe "GET 'jets'" do
    it "returns http success" do
      get 'jets'
      response.should be_success
    end
  end

  describe "GET 'booking'" do
    it "returns http success" do
      get 'booking'
      response.should be_success
    end
  end

end
