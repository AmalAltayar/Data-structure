class Node {
  int data;
  Node? next;

  Node(this.data);
}

Node? removeAllOccurrences(Node? head, int target) {
  // Handle null head
  if (head == null) {
    return null;
  }

  // Remove occurrences at the beginning of the list
  while (head != null && head.data == target) {
    head = head.next;
  }

  Node? current = head;

  // Remove occurrences in the middle or end of the list
  while (current != null && current.next != null) {
    if (current.next!.data == target) {
      current.next = current.next!.next;
    } else {
      current = current.next;
    }
  }

  return head;
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
  head.next?.next?.next = Node(2);
  head.next?.next?.next?.next = Node(4);

  print("Original Linked List:");
  printLinkedList(head);

  int target = 2;
  Node? newList = removeAllOccurrences(head, target);
  print("\nLinked List after removing all occurrences of $target:");
  printLinkedList(newList);
}
