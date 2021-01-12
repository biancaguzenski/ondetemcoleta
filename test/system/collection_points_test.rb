require "application_system_test_case"

class CollectionPointsTest < ApplicationSystemTestCase
  setup do
    @collection_point = collection_points(:one)
  end

  test "visiting the index" do
    visit collection_points_url
    assert_selector "h1", text: "Collection Points"
  end

  test "creating a Collection point" do
    visit collection_points_url
    click_on "New Collection Point"

    fill_in "Address", with: @collection_point.address
    fill_in "City", with: @collection_point.city
    fill_in "Name", with: @collection_point.name
    fill_in "Obs", with: @collection_point.obs
    fill_in "Phone", with: @collection_point.phone
    fill_in "State", with: @collection_point.state
    click_on "Create Collection point"

    assert_text "Collection point was successfully created"
    click_on "Back"
  end

  test "updating a Collection point" do
    visit collection_points_url
    click_on "Edit", match: :first

    fill_in "Address", with: @collection_point.address
    fill_in "City", with: @collection_point.city
    fill_in "Name", with: @collection_point.name
    fill_in "Obs", with: @collection_point.obs
    fill_in "Phone", with: @collection_point.phone
    fill_in "State", with: @collection_point.state
    click_on "Update Collection point"

    assert_text "Collection point was successfully updated"
    click_on "Back"
  end

  test "destroying a Collection point" do
    visit collection_points_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Collection point was successfully destroyed"
  end
end
