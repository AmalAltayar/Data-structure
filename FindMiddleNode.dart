Node? findMiddleNode(Node? head) {
  if (head == null) return null;

  Node? slow = head;
  Node? fast = head;

  while (fast?.next != null && fast?.next?.next != null) {
    slow = slow?.next;
    fast = fast?.next?.next;
  }

  return slow;
}

void main() {
  // Example linked list
  Node head = Node(1);
  head.next = Node(2);
  head.next?.next = Node(3);
  head.next?.next?.next = Node(4);

  Node? middleNode = findMiddleNode(head);
  print("Middle Node value: ${middleNode?.data}");
}
