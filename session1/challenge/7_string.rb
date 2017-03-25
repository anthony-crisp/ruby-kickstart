# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  arr = string.split("")
  arr_two = []
  arr.each_with_index do |char,index|
    next_char = arr[index + 1]
    arr_two << next_char if char == "r" || char == "R"
 end
 arr_two.join
end
