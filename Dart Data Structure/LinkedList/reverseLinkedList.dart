import 'linkedListClass.dart';

void reverseList(LinkedList list) {
  Node? currentNode = list.head;
  Node? prevNode;
  Node? nextNode;

  while (currentNode != null) {
    nextNode = currentNode.next;
    currentNode.next = prevNode;
    prevNode = currentNode;
    currentNode = nextNode;
  }

  list.head = prevNode;
}

void main() {
  LinkedList list = LinkedList();
  list.insert(4);
  list.insert(3);
  list.insert(2);
  list.insert(1);

  print('Original Linked List:');
  list.printList();
  reverseList(list);

  print('Reversed Linked List:');
  list.printList();
}
