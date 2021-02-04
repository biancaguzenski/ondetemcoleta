require 'rails_helper'

RSpec.describe "CollectionPoints", type: :request do
  describe "GET /home" do
    it "returns success status" do
      get home_path
      expect(response).to have_http_status(200)
    end
  end
  describe "GET /collection_points" do
    it "returns success status" do
      get collection_points_path
      expect(response).to have_http_status(200)
    end
  end
  describe "GET /about" do
    it "returns success status" do
      get about_path
      expect(response).to have_http_status(200)
    end
  end
  describe "GET /contact" do
    it "returns success status" do
      get contact_path
      expect(response).to have_http_status(200)
    end
  end
end
