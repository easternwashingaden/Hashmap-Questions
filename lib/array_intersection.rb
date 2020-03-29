#Time complexity: O(n+m)
#Space complexity: O(n)
def intersection(list1, list2)
  
  #create a hash with each element of the array as keys and value as true 
  hash = {}
  list1.each do |element|
     hash[element] = true 
  end
  #find each element of list2 by the hash's keys
  result = []
  list2.each do |element|
    if hash[element] == true
      result << element
    end
  end
  return result
end

# Without using the hash table 
# def intersection(list1, list2) 
#   result = []
#   if list1.length >= list2.length
#     list1.length.times do |i|
#       if list1.include?(list2[i])
#         result << list2[i]
#       end
#     end
#     return result
#   else
#     list2.length.times do |i|
#       if list2.include?(list1[i])
#         result << list1[i]
#       end
#     end
#     return result
#   end
# end