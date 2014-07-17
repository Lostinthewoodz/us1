require 'spec_helper'

describe TravelPagesController do

  describe "GET 'tour'" do
    it "returns http success" do
      get 'tour'
      response.should be_success
    end
  end

  describe "GET 'cruise'" do
    it "returns http success" do
      get 'cruise'
      response.should be_success
    end
  end

  describe "GET 'rail'" do
    it "returns http success" do
      get 'rail'
      response.should be_success
    end
  end

  describe "GET 'car'" do
    it "returns http success" do
      get 'car'
      response.should be_success
    end
  end

end
