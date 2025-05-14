import 'linkedListClass.dart';

void removeAllOccurrence(LinkedList list, value) {
  Node? current = list.head;
  Node? previousNode;

  while (current != null) {
    if (current.data == value) {
      if (previousNode == null) {
        list.head = current.next;
        if (list.head == null) {
          list.tail == null;
        }
      } else {
        previousNode.next = current.next;
        if (current.next == null) {
          list.tail = previousNode;
        }
      }
    } else {
      previousNode = current;
    }
    current = current.next;
  }
}

void main() {
  LinkedList list = LinkedList();

  list.insert(1);
  list.insert(5);
  list.insert(2);
  list.insert(5);
  list.insert(6);
  list.insert(5);
  list.insert(10);
  list.insert(5);

  print('Original Linked List:');
  list.printList();
  removeAllOccurrence(list, 5);
  print('Linked List after removing all occurrences of 3:');

  list.printList();
}
