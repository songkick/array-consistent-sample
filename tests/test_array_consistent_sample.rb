# encoding: UTF-8
require 'minitest/autorun'
require 'array_consistent_sample'

TEST_ARRAY = ['foo', 'bar', 'baz', 'qux', 'föô bår']

class TestArrayConsistentSample < Minitest::Test
  def test_consistent_sample
    assert_equal(TEST_ARRAY.consistent_sample(1), TEST_ARRAY.consistent_sample(1))
  end

  def test_consistent_sample_with_name
    assert_equal(TEST_ARRAY.consistent_sample(1, 'foo'), TEST_ARRAY.consistent_sample(1, 'foo'))
  end

  def test_consistent_sample_length
    1.upto(TEST_ARRAY.length).each do |n|
      assert_equal(n, TEST_ARRAY.consistent_sample(n).length)
    end
  end
end
