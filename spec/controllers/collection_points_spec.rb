require 'rails_helper'

RSpec.describe CollectionPointsController, type: :controller do

    context "GET #home" do
        it "should succeed render home template" do
            get :home   # action home
            expect(response).to have_http_status(200)
            expect(response).to render_template("home")
        end
    end
    context "GET #index" do
        it "should succeed and render index template" do
            get :index
            expect(response).to have_http_status(200)
            expect(response).to render_template(:index)
        end
        it "should have one collection point" do
            cp = CollectionPoint.new
            cp.name = "name"
            cp.city = "city"
            cp.state = "st"
            cp.address = "address"
            get :index
            expect(assigns(@collection_points)).to_not be_empty
        end
    end
end