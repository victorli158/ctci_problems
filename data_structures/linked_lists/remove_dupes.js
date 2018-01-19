const LinkedList = require('./linked_list.js');

function removeDupes(list) {
  let current = list.head;
  let values = {};
  while (current !== null) {
    if (values[current.val]) {
      current.prev.next = current.next;
      current.next.prev = current.prev;
    } else {
      values[current.val] = true;
    }
    current = current.next;
  }
  return list.returnList();
}
