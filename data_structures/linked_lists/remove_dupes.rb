require_relative 'link'
require_relative 'linked_list'

def remove_dupes(ll)
  current = ll.head
  values = Hash.new()
  until current == nil
    if values[current.val]
      current.prev.next_link = current.next_link
      current.next_link.prev = current.prev
    else
      values[current.val] = true
    end
    current = current.next_link
  end
  ll
end

# The problem was easy enough but one issue I got stuck on was making
# an error with the add method in linked_list.rb. You need to set
# prev = current after the loop to get the right prev.
