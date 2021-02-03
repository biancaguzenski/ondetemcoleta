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

  #describe "POST /collection_points" do
  #  context "when it has valid parameters" do
  #    it "creates new collection point" do
  #      collection_points_attributes = FactoryBot.attributes_for(:collection_points)
  #      post collection_points_path, params: { collection_points: collection_points_attributes }
  #      expect(CollectionPoints.last).to have_attributes(collection_points_attributes)
  #    end
  #  end

    #context "when it has no valid parameters" do
    #  it "do not create new collection point" do
    #  end
    #end
  #end

  #describe "GET collection_points#home" do
  #  it 'should render home' do
  #  end
  #end

  #describe "index" do
  #  context 'when new collection point is created' do
  #    it 'should create new CP and redirect to index' do
  #    end
  #  end
  #end

  #describe 'GET collection_points#show' do
  #  it 'should render collection_points#show template' do
  #    params = 
  #    cp = CollectionPoint.create(params)
  #    visit show_path(cp.id)
  #    
  #    page.should have_content(cp.name)
  #    page.should have_content(cp.address)
  #    page.should have_content(cp.city)
  #    page.should have_content(cp.state)
  #  end
  #end
  #escribe 'get collection_points#new'
  #it 'should render collection_points#new template'
  #
  #describe 'POST collection_points#create' do
  #  context 'with valid attributes' do
  #    it 'should save new collection point in database' do
  #      visit new_collection_points_path
  #      fill_in "name", with: "name"
  #      fill_in "city" ...
  #      ..
  #      expect { click_button "Criar" }.to change(CollectionPoints, :count).by(1)
  #    end
  #  end
  #  it 'should redirect to collection_points#index page' do
  #  end
  #  context 'with invalid attributes' do
  #    it 'should not save new collection point in database' do
  #    end
  #    it 'should redirect to collection_points#new page' do
  #    end
  #  end
  #end
end
