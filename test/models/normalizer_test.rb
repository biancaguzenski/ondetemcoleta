require 'test_helper'

class NormalizerTest < ActiveSupport::TestCase
  test "upcase string" do
    string = Normalizer.new
    assert_equal string.normalize("string"), "STRING"
  end
  test "remove accents from string" do
    string = Normalizer.new
    assert_equal string.normalize("cão"), "CAO"
  end
end