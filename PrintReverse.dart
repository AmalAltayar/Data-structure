class Node {
  int data;
  Node? next;

  Node(this.data);
}

void printListInReverse(Node? head) {
  if (head == null) return;

  printListInReverse(head.next);
  print(head.data);
}

void main() {
  // Example linked list
  Node head = Node(1);
  head.next = Node(2);
  head.next?.next = Node(3);
  head.next?.next?.next = Node(4);

  print("Original Linked List:");
  printListInReverse(head);
}
