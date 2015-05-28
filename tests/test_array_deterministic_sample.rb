require 'minitest/autorun'
require 'array_deterministic_sample'

TEST_ARRAY = ['foo', 'bar', 'baz', 'qux']

class TestArrayDeterministicSample < Minitest::Test
  def test_deterministic_sample
    assert_equal(TEST_ARRAY.deterministic_sample(1), TEST_ARRAY.deterministic_sample(1))
  end

  def test_deterministic_sample_with_name
    assert_equal(TEST_ARRAY.deterministic_sample(1, 'foo'), TEST_ARRAY.deterministic_sample(1, 'foo'))
  end

  def test_deterministic_sample_length
    assert_equal(1, TEST_ARRAY.deterministic_sample(1).length)
    assert_equal(2, TEST_ARRAY.deterministic_sample(2).length)
    assert_equal(3, TEST_ARRAY.deterministic_sample(3).length)
    assert_equal(4, TEST_ARRAY.deterministic_sample(4).length)
  end
end
