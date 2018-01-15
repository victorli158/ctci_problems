def str_compressor(str)
  chars = str.split('')
  compressed_str = ''
  count = 1
  chars.each_with_index do |el, idx|
    if el == chars[idx + 1]
      count += 1
    else
      compressed_str << el + count.to_s
      count = 1
    end
  end
  compressed_str.length < str.length ? compressed_str : str
end

# Time complexity: O(n)
# Space complexity: O(n)

