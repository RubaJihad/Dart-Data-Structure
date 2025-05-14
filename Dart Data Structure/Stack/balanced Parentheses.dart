bool isBalancedParentheses(String str) {
  final stack = [];

  for (int i = 0; i < str.length; i++) {
    if (str[i] == '(') {
      stack.add(str[i]);
    } else if (str[i] == ')') {
      if (stack.isEmpty) {
        return false;
      }
      stack.removeLast();
    }
  }
  return stack.isEmpty;
}

void main() {
  print(
    isBalancedParentheses("(a + b)"),
  );

  print(
    isBalancedParentheses(")a + )b("),
  );

  print(
    isBalancedParentheses("( a + b ( c - d ))"),
  );

  print(
    isBalancedParentheses(") a )- ( a + b ("),
  );
}
