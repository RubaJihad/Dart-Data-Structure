class Node {
  int data;
  Node? next; //next is reference to next node in linked list

  Node(this.data);
}

class LinkedList {
  Node? head;
  Node? tail; // head is reference to the first node in linked list

  // Insert at end
  void insert(int data) {
    Node newNode = Node(data);

    if (head == null) {
      head = newNode;
    } else {
      Node current = head!;
      while (current.next != null) {
        current = current.next!;
      }
      current.next = newNode;
    }
  }

  // Print list
  void printList() {
    Node? current = head;
    while (current != null) {
      print(current.data);
      current = current.next;
    }
  }

  Node? findMiddle() {
    if (head == null) return null;

    Node? slow = head;
    Node? fast = head;

    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;
    }

    return slow; // Middle node
  }
}
