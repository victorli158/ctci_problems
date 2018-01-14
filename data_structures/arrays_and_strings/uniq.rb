def uniq?(str)
  chars = str.split('')
  count = Hash.new(0)
  chars.each do |ch|
    if count[ch.downcase].zero?
      count[ch.downcase] += 1
    else
      return false
    end
  end
  true
end

# Time complexity: O(n)
# Space complexity: O(n)
# Initial mistakes: Forgot to account for uppercase chars,
# unless interviewer is ok with those being counted separately
