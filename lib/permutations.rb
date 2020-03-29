#Time complexity: O(n+m)
#Space complexity: O(n)
def permutations?(string1, string2)
  return true if string1 == "" && string2 == ""
  return false if (string1.length != string2.length) 


  #convert both strings to arrays of letters
  array1 = string1.chars
  array2 = string2.chars

  #create a hash by assigning each element of array1 for the keys of hash

  hash = {}
  array1.each do |letter|
    hash[letter] = true
  end

  array2.each do |letter|
    if hash[letter] != true
      return false
    end
  end
  return true
end