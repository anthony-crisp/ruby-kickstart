# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"

def print_list_in_reverse(list)
  return unless list  # The last element in a linked list is always nil, so false, so return the list if is its nil,
                      # or return the last element.
  print_list_in_reverse(list[:next])  # Recursive step, passes the next element to print_list_in_reverse,
                                      #if it's nil, the last element is returned, if not it is passed the next element.
  puts list[:data]  # puts returns each element of the recursive step to stdout each on a new line,
                    # so printing the list in reverse order
end
