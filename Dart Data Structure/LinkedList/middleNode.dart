import 'linkedListClass.dart';

void main() {
  LinkedList list = LinkedList();

  list.insert(10);
  list.insert(20);
  list.insert(30);
  list.insert(40);
  list.insert(50);

  print("Linked List:");
  list.printList();

  Node? middle = list.findMiddle();
  if (middle != null) {
    print("\nMiddle node: ${middle.data}");
  } else {
    print("The list is empty.");
  }
}
