#Time complexity: O(n+m+l)
#Space complexity: O(n^2)

def palindrome_permutation?(string)
  return true if string == ""

  #Convert the string to an array of letters
  string_array = string.chars

  #reverse_string_array
  reverse_string_array = []
  string_array.each do |letter|
    reverse_string_array.unshift(letter)
  end

  #create a string_hash by having each element string_array as keys
  string_hash = {}
 
  string_array.length.times do |i|
    string_hash[string_array[i]] = reverse_string_array[i]
  end
  
  #compare each key and value of the hash
  string_hash.each do |key, value|
    if key == value
      return true
    end
  end
  return false
end