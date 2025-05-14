void reverseList(List<dynamic> inputList) {
  List<dynamic> stack = [];

  // Push all items onto the stack

  for (int i = 0; i < inputList.length; i++) {
    stack.add(inputList[i]);
  }

  print('Reversed List:');
  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}



void main() {
  reverseList(
    ["Ruba", "Jihad", "Shihada"],
  );
 
}
