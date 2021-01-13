require 'test_helper'

class CollectionPointTest < ActiveSupport::TestCase
  test "should not create new local without name" do
    local = CollectionPoint.new
    local.state = "State"
    local.city = "City"
    local.address = "Address"
    assert_not local.save, "Tried to save the project without title"
  end
  test "should not create new local without state" do
    local = CollectionPoint.new
    local.name = "Name"
    local.city = "City"
    local.address = "Address"
    assert_not local.save, "Tried to save the project without state"
  end
  test "should not create new local without city" do
    local = CollectionPoint.new
    local.name = "Name"
    local.state = "State"
    local.address = "Address"
    assert_not local.save, "Tried to save the project without city"
  end
  test "should not create new local without address" do
    local = CollectionPoint.new
    local.name = "Name"
    local.state = "State"
    local.city = "City"
    assert_not local.save, "Tried to save the project without address"
  end
end
