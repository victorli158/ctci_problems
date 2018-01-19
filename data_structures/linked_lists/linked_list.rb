require_relative 'link'

class LinkedList
  attr_accessor :head, :tail

  def initialize(val)
    @head = Link.new(val)
  end

  def add(val)
    current = @head
    while current.next_link != nil
      prev = current
      current = current.next_link
    end
    prev = current
    current.next_link = Link.new(val, nil, prev)
  end

  def delete(val)
    current.next_link = @head
    if current.val == val
      @head = current.next_link
    else
      while (current.next_link != nil) && (current.next_link.val != val)
        current = current.next_link
      end
      unless current.next_link = nil
        current.next_link = current.next_link.next_link
      end
    end
  end

  def return_list
    current = @head
    vals = []
    until current.next_link == nil
      vals << current.val
      current = current.next_link
    end
    vals << current.val
    vals
  end
end
