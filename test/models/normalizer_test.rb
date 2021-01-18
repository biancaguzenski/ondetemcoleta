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
  test "remove non-integer values from phone" do
    string = Normalizer.new
    assert_equal string.normalize_phone("(51)99294-7666"), "51992947666"
  end
end