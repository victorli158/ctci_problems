class Link
  attr_accessor :val, :next_link, :prev

  def initialize(val, next_link = nil, prev = nil)
    @val = val
    @next_link = next_link
    @prev = prev
  end
end
