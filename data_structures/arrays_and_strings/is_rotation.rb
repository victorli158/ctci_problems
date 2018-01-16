def is_substring?(str1, str2)
  str1_chars = str1.split('')
  str1_chars.each_with_index do |ch, idx|
    if ch == str2[0]
      counter = 0
      substr = ch
      until counter == str2.length
        counter += 1
        substr += str1[idx + counter] unless counter == str2.length
        return true if substr == str2
      end
    end
  end
  false
end

# Could be cleaned up if I choose to return to find a better solution

def is_rotation?(str1, str2)
  return false if str1.length != str2.length || str1.length == 0
  double_string = str1 + str1
  is_substring?(double_string, str2)
end

# The problem asks specifically to use a call to is_substring?
# Another solution would be to rotate letters from front to back
# and see if they match the other string.

# The book's solution is actually pretty neat. Take example here:
# str1 = xy = 'waterbottle'
# x = 'wat'
# y = 'erbottle'
# s2 = yx = 'erbottlewat'
# So we need to check if there's a way to split str1 into x and y such
# that xy = str1 and yx = s2. Then, regardless of where the division is,
# yx will ALWAYS be a substring of xyxy. So str2 will always be a
# substring of str1str1.