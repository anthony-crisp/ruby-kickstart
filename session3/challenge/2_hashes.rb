# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(n)
  new_hash = Hash.new
  (1..n).each do |k|
    next if k.even?
    new_arr  = Array.new(k) { |i| i + 1 }
    arr_no_odds = new_arr.reject { |i| i.odd? }
    new_hash[k] = arr_no_odds
  end
  new_hash
end
