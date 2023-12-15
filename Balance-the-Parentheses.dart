bool areParenthesesBalanced(String input) {
  int count = 0;

  for (int i = 0; i < input.length; i++) {
    if (input[i] == '(') {
      count++;
    } else if (input[i] == ')') {
      count--;
    }

    // If count goes negative, unbalanced parentheses
    if (count < 0) {
      return false;
    }
  }

  // If count is zero, parentheses are balanced
  return count == 0;
}

void main() {
  String expression = "(a+b)+(c-d)";
  bool balanced = areParenthesesBalanced(expression);
  print("Parentheses in '$expression' are balanced: $balanced");
}
