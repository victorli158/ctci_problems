const Link = require('./link.js');

class LinkedList {
  constructor(val) {
    this.head = new Link(val);
  }

  add(val) {
    let current = this.head;
    let prev;
    while (current.next !== null) {
      prev = current;
      current = current.next;
    }
    prev = current;
    current.next = new Link(val, null, prev);
  }

  returnList() {
    let current = this.head;
    let vals = [];
    while (current.next !== null) {
      vals.push(current.val);
      current = current.next;
    }
    vals.push(current.val);
    return vals;
  }
}

module.exports = LinkedList;
