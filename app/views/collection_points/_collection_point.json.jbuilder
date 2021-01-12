json.extract! collection_point, :id, :name, :state, :city, :address, :phone, :obs, :created_at, :updated_at
json.url collection_point_url(collection_point, format: :json)
