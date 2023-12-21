void main() {
  print('Mohammad');

  String firstStr = 'Mohammad';
      print(firstStr);
  int firstInt = 8;
      print(firstInt);
  double firstDob = 16.8;
      print(firstDob);
  bool firstBoo = true;
      print(firstBoo);

  var salary = 400;
      salary = 500;
      print(salary);

  var salary1 = 400.5;
      salary1 = 500.5;
      print(salary1);

  const tax = 0.08;
      //tax = 0.05;
      print(tax);

  final newTax = 0.05;
      //newTax = 0.08;
      print(newTax);

  List marks = [10 , 20 , 15 , 16];
    // marks = [1 , 'mohammad'];
       marks [1] = 30;
       print(marks);

// operation dart
// is and is not
int a = 8;
print('__' * 40);
print('is');
print(a is int);
print(a is double);
print(16 is int);
print(16.5 is int);
print('is!');
print(a is! int);
print(a is! double);
print(16 is! int);
print(16.5 is! int);

}