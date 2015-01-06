require 'rails_helper'

RSpec.describe "Ratings", :type => :request do
  describe "GET /ratings" do
    it "works! (now write some real specs)" do
      get ratings_path
      expect(response.status).to be(200)
    end
  end
end
