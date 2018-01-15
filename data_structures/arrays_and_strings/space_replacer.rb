def space_replacer(str)
  chars = str.strip.split('')
  chars.each_with_index do |el, idx|
    chars[idx] = '%20' if el == ' '
  end
  chars.join('')
end

# Time complexity: O(n)
# Space complexity: O(n)
# Note the strip, which gets rid of the trailing whitespace