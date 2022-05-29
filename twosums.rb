
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]} #

def two_sum(nums, target)
  checked_numbers = {}

 nums.each_with_index do |value, i|
   difference = target - value

   if checked_numbers[difference]
     return [checked_numbers[difference], i]
   else
    checked_numbers[value] = i
   end
 end
end
