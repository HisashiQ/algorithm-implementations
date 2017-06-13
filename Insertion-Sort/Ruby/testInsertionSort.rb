require_relative 'main'
require 'test/unit'

class TestInsertionSort < Test::Unit::TestCase
  def test_list_sorted
    assert_equal([3,3,4,5,6,6,7,8,12,12,15,200] ,insertion_sort([3,5,4,6,7,8,12,15,3,200,6,12]))
  end

  def test_empty_list
    assert_equal([], insertion_sort([]))
  end
end
