gem 'minitest', '>= 5.0.0'
require 'minitest/autorun'
require_relative 'methods'

describe "Problem 1" do
  it "Prints the contents of an array as a bracketed, comma-separated list" do
    proc {
      print_array([3, 19, 27, 4, 98, 304, -9, 72])
    }.must_output "[3, 19, 27, 4, 98, 304, -9, 72]"
  end
end

describe "Problem 2" do
  let(:list) { [18, 7, 4, 24, 11] }

  it "Returns an array twice as large as the original" do
    stretch(list).length.must_equal list.length * 2
  end

  it "Returns an array where every integer is replaced with its halves" do
    stretch(list).must_equal [9, 9, 4, 3, 2, 2, 12, 12, 6, 5]
  end
end

describe "Problem 3" do
  it "Returns the number of unique values in a list with duplicates" do
    list = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]

    numUnique(list).must_equal 9
  end

  it "Returns the number of unique values in a list without duplicates" do
    list = [1, 2, 11, 17, 19, 20, 23, 24, 25, 26, 31, 34, 37, 40, 41]

    numUnique(list).must_equal 15
  end

  it "Returns 0 when given an empty list" do
    numUnique([]).must_equal 0
  end
end

describe "Problem 4" do
  it "Returns the number of unique values in a list with duplicates" do
    list = [5, 7, 7, 7, 8, 22, 22, 23, 31, 35, 35, 40, 40, 40, 41]

    numUnique2(list).must_equal 9
  end

  it "Returns the number of unique values in a list without duplicates" do
    list = [1, 2, 11, 17, 19, 20, 23, 24, 25, 26, 31, 34, 37, 40, 41]

    numUnique2(list).must_equal 15
  end

  it "Returns 0 when given an empty list" do
    numUnique2([]).must_equal 0
  end
end
