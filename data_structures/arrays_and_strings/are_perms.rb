def are_perms?(str1, str2)
  chars1 = Hash.new(0)
  chars2 = Hash.new(0)
  str1.each_char do |ch|
    chars1[ch.downcase] += 1
  end
  str2.each_char do |ch|
    chars2[ch.downcase] += 1
  end
  chars1 == chars2
end

# Time complexity: O(n)
# Space complexity: O(n)
# Initial mistakes: Forgot to account for uppercase, need to ask interviewer first
# So it looks like in Ruby, you can do direct comparisons of arrays
# and hashes and it will be fine.