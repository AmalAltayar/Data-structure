class Node {
  int data;
  Node? next;

  Node(this.data);
}

Node? reverseLinkedList(Node? head) {
  Node? prev = null;
  Node? current = head;
  Node? nextNode;

  while (current != null) {
    nextNode = current.next;
    current.next = prev;
    prev = current;
    current = nextNode;
  }

  return prev;
}

void printLinkedList(Node? head) {
  while (head != null) {
    print(head.data);
    head = head.next;
  }
}

void main() {
  // Example linked list
  Node head = Node(1);
  head.next = Node(2);
  head.next?.next = Node(3);
  head.next?.next?.next = Node(4);

  print("Original Linked List:");
  printLinkedList(head);

  Node? reversedHead = reverseLinkedList(head);
  print("\nReversed Linked List:");
  printLinkedList(reversedHead);
}
