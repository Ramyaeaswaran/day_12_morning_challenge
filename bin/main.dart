import 'dart:core';

// Challenge 1
//Create a function that takes an list of positive and negative numbers.
// Return a list where the first element is the count of positive numbers and the second element is the sum of negative numbers.
// Examples
// countPosSumNeg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]) ➞ [10, -65]
/// There are a total of 10 positive numbers.
/// The sum of all negative numbers equals -65.
countPosSumNeg(List num){
int count=0;
int total=0;
for(int i=0;i<num.length;i++){
  if(num[i]>0){
    count++;
  }else if(num[i]<0){
total+=num[i];
  }
}
List<int> val=[count,total];
return val;
}


// Challenge 2
// The digit distance between two numbers is the absolute value of the difference of each digit.
//  To illustrate:
//
// digitDistance(234, 489) ➞ 12
// Since |2 - 4| + |3 - 8| + |4 - 9| = 2 + 5 + 5
/// Create a function that returns the digit distance between two integers.
digitDistance(int x,int y){
  int sum=0;
  String xstr = x.toString();
  String ystr = y.toString();
  for(int i=0;i<xstr.length;i++){
      int firstx=int.parse(xstr[i]);
      int firsty=int.parse(ystr[i]);
      int  value = firstx-firsty;
      sum += value.abs();
  }
  return sum;
  }


// Challenge 3
// Write test cases to test previous functions
main() {
  print(countPosSumNeg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]));
  print(digitDistance(234, 489));
}
