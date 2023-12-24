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

  dynamic s = 10;
      print(s);
          s = 'ahmad';
              print(s);
          s = [1 , 2 , 3 , 4];
              print(s);

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
// is 
int a = 8;
print('__' * 40);
print('is');
print(a is int);
print(a is double);
print(16 is int);
print(16.5 is int);

// is not 
print('__' * 40);
print('is!');
print(a is! int);
print(a is! double);
print(16 is! int);
print(16.5 is! int);

// Bitwise operators
// & and 
print('__' * 40);
print('and &');
print(true & true);
print(false & false);
print(true & false);

// | or 
print('__' * 40);
print('or |');
print(true | true);
print(false | false);
print(true | false);

// ^ xor
print('__' * 40);
print('xor ^');
print(true ^ true);
print(false ^ false);
print(true ^ false);

// ~ not
print('__' * 40);
print('not  ~');
print(~firstInt);

// ??=
print('__' * 40);
print('??=');
var x;
//x = 7;
print('x befor');
print(x);
print('x after');
print(x ??=5);
// +=
//print(x +=2);
// -=
//print(x -=2);
// *=
//print(x *= 2);
// /=
print(x /=2);

// if -- else if -- else
print('__' * 40);
int checkNumber  = 5;
if (checkNumber > 8){
  print('true just if');
}
  else if(checkNumber > 3){
    print(' true else if');
  }

  else{
    print('false');
  }

}