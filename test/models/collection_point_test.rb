require 'test_helper'

class CollectionPointTest < ActiveSupport::TestCase

  # tests for validation

  test "should not create new local without name" do
    local = CollectionPoint.new
    local.state = "State"
    local.city = "City"
    local.address = "Address"
    assert_not local.save, "Tried to save local without name."
  end
  test "should not create new local without state" do
    local = CollectionPoint.new
    local.name = "Name"
    local.city = "City"
    local.address = "Address"
    assert_not local.save, "Tried to save local without state."
  end
  test "should not create new local without city" do
    local = CollectionPoint.new
    local.name = "Name"
    local.state = "State"
    local.address = "Address"
    assert_not local.save, "Tried to save local without city."
  end
  test "should not create new local without address" do
    local = CollectionPoint.new
    local.name = "Name"
    local.state = "State"
    local.city = "City"
    assert_not local.save, "Tried to save local without address."
  end
  test "should not create new local with invalid characters in name" do
    local = CollectionPoint.new
    local.name = "Name["
    assert_not local.save, "Tried to save local with invalid characteres in name."
  end
  test "should not create new local with invalid characters in city" do
    local = CollectionPoint.new
    local.city = "City["
    assert_not local.save, "Tried to save local with invalid characteres in city."
  end
  test "should not create new local with invalid characters in address" do
    local = CollectionPoint.new
    local.address = "Address, 10["
    assert_not local.save, "Tried to save local with invalid characteres in address"
  end
  test "should not create new local with invalid characters in phone" do
    local = CollectionPoint.new
    local.phone = "xxxxx"
    assert_not local.save, "Tried to save local with invalid characteres in address"
  end
  test "should not create new local with invalid phone size - bigger" do
    local = CollectionPoint.new
    local.phone = "1234567890123456"
    assert_not local.save, "Tried to save local with invalid phone size"
  end
  test "should not create new local with invalid phone size - smaller" do
    local = CollectionPoint.new
    local.phone = "12"
    assert_not local.save, "Tried to save local with invalid phone size"
  end
  test "should not create new local with invalid name size" do
    local = CollectionPoint.new
    local.name = "a"
    assert_not local.save, "Tried to save local with invalid name size"
  end
  test "should not create new local with invalid city size" do
    local = CollectionPoint.new
    local.city = "a"
    assert_not local.save, "Tried to save local with invalid city size"
  end
end
