class MissingNumber
  #def missing_number(nums)
  #  nums.length + 1 == nums.max ? "no missing number" : halves = make_halves(nums.sort)
  #  binding.pry
  #end
  #
  def missing_number(nums)
    exp_length = Array(nums.min..nums.max).length
    first_num = nums.min
    last_num = nums.max
    sorted = nums.sort

    if sorted.length >= 0 && nums.max - nums.min == 1
      'no missing number'
    elsif sorted.length == 2
      nums.max - 1
    else
    end  

    binding.pry
  end

  def make_halves(array)
    halves = array.each_slice( (array.size/2.0).round ).to_a
    halves.each do |half|
      half.length > 2 && half.length != half.max && make_halves(half)
      #half.first + 1 if half.first + 1 != half.last
    end
  end
end

#Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.
#
#Follow up: Could you implement a solution using only O(1) extra space complexity and O(n) runtime complexity?

#Example 1:
#
#Input: nums = [3,0,1]
#Output: 2
#Explanation: n = 3 since there are 3 numbers, so all numbers are in the range [0,3]. 2 is the missing number in the range since it does not appear in nums.
#Example 2:
#
#Input: nums = [0,1]
#Output: 2
#Explanation: n = 2 since there are 2 numbers, so all numbers are in the range [0,2]. 2 is the missing number in the range since it does not appear in nums.
#Example 3:
#
#Input: nums = [9,6,4,2,3,5,7,0,1]
#Output: 8
#Explanation: n = 9 since there are 9 numbers, so all numbers are in the range [0,9]. 8 is the missing number in the range since it does not appear in nums.
#Example 4:
#
#Input: nums = [0]
#Output: 1
#Explanation: n = 1 since there is 1 number, so all numbers are in the range [0,1]. 1 is the missing number in the range since it does not appear in nums.
