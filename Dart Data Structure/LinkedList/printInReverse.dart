import 'linkedListClass.dart';

// Print list in reverse (using recursion)
void printReverse(Node? node) {
  if (node == null) return;
  printReverse(node.next);
  print(node.data);
}

void main() {
  LinkedList list = LinkedList();

  list.insert(10);
  list.insert(20);
  list.insert(30);
  list.insert(40);
  list.insert(50);

  print('Normal order of Linked List:');
  list.printList();

  print('\nReverse order of Linked List:');
  printReverse(list.head);
}
