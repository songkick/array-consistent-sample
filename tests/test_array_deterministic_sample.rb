# encoding: UTF-8
require 'minitest/autorun'
require 'array_deterministic_sample'

TEST_ARRAY = ['foo', 'bar', 'baz', 'qux', 'föô bår']

class TestArrayDeterministicSample < Minitest::Test
  def test_deterministic_sample
    assert_equal(TEST_ARRAY.deterministic_sample(1), TEST_ARRAY.deterministic_sample(1))
  end

  def test_deterministic_sample_with_name
    assert_equal(TEST_ARRAY.deterministic_sample(1, 'foo'), TEST_ARRAY.deterministic_sample(1, 'foo'))
  end

  def test_deterministic_sample_length
    1.upto(TEST_ARRAY.length).each do |n|
      assert_equal(n, TEST_ARRAY.deterministic_sample(n).length)
    end
  end
end
