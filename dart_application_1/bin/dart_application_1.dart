import 'dart:io';

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
print('if - else if - else');
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

// for loop
print('__' * 40);
print('for loop');
for(int i = 0; i <= 10; i++){

  if(i == 3){
    continue;
  }

  if(i ==6){
    break;
  }
  print(i);
}

// while loop
print('__' * 40);
print('while loop');
while(true){
  print('hello in dart please inter your to guess');
  int number = int.parse(stdin.readLineSync()!);
  if (number == 5){
    print('you won the number was 5');
    break;
  }
  else{
    print('oh no you loos -_-');
  }
}

// do while
print('__' * 40);
print('do while');
bool isTrue = true;
do {
  print('hi iam in do while');
  String? gussNumber = stdin.readLineSync();
  if (gussNumber == '5'){
    print('you won the number was 5 change to false');
    isTrue = false;
    print('iam after isTrue');
  }
  else if(gussNumber == '10'){
    print('you won the number was 10 break');
    break;
    print('iam after break');
  }
  else{
    print('try again');
  }
} while (isTrue);

// function type
print('__' * 40);
print('function - return type');
 String getName(){
  print('getName');
  String? userName = stdin.readLineSync();
  return userName!;
 }
 String lastName = getName();
 print('this is last name value $lastName');
//  
}