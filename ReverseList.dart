void printListInReverse(List<int> myList) {
  for (int i = myList.length - 1; i >= 0; i--) {
    print(myList[i]);
  }
}

void main() {
  List<int> myNumbers = [1, 2, 3, 4, 5];
  print("Original List: $myNumbers");
  print("List in Reverse Order:");
  printListInReverse(myNumbers);
}
