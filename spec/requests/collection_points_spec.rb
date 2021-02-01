require 'rails_helper'

RSpec.describe "CollectionPoints", type: :request do
  describe "GET /collection_points" do
    it "returns success status" do
      get collection_points_path
      expect(response).to have_http_status(200)
    end
  end

  describe "POST /collection_points" do
    context "when it has valid parameters" do
      it "creates new collection point" do
        point = CollectionPoints.new
      end
    end

    #context "when it has no valid parameters" do
    #  it "do not create new collection point" do
    #  end
    #end
  end
end
