void main() {

  final numbers = [5, 6];
  /**
   * iterate for loop within a List
   */
  final myList1 = [
    1,
    2,
    for(final num in numbers)
      num
  ];

  /**
   * iterate using spread operator(...) within a List
   */
  final myList2 = [
    1,
    2,
    ...numbers
  ];

  /**
   * iterate using map() + spread Operator(...) within a List
   */
  final myList3 = [
    1,
    2,
    ...numbers.map((n){
      return n * 2;
    })
  ];

  print("LIST:: $myList3");

}

