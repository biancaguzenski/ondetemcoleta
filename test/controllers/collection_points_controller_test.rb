require 'test_helper'

class CollectionPointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collection_point = collection_points(:one)
  end

  test "should get index" do
    get collection_points_url
    assert_response :success
  end

  test "should get new" do
    get new_collection_point_url
    assert_response :success
  end

  test "should create collection_point" do
    assert_difference('CollectionPoint.count') do
      post collection_points_url, params: { collection_point: { address: @collection_point.address, city: @collection_point.city, name: @collection_point.name, obs: @collection_point.obs, phone: @collection_point.phone, state: @collection_point.state } }
    end

    assert_redirected_to collection_point_url(CollectionPoint.last)
  end

  test "should show collection_point" do
    get collection_point_url(@collection_point)
    assert_response :success
  end

  test "should get edit" do
    get edit_collection_point_url(@collection_point)
    assert_response :success
  end

  test "should update collection_point" do
    patch collection_point_url(@collection_point), params: { collection_point: { address: @collection_point.address, city: @collection_point.city, name: @collection_point.name, obs: @collection_point.obs, phone: @collection_point.phone, state: @collection_point.state } }
    assert_redirected_to collection_point_url(@collection_point)
  end

  test "should destroy collection_point" do
    assert_difference('CollectionPoint.count', -1) do
      delete collection_point_url(@collection_point)
    end

    assert_redirected_to collection_points_url
  end
end
