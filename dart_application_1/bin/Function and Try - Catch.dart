import 'dart:io';

void main(){

// function type
print('function - return type');
 String getName(String? parms){
  print('getName');
  print('i am param: $parms');
  String? userName = stdin.readLineSync();
  return userName!;
 }
 String lastName = getName('test');
 print('this is last name value $lastName');

print('__' * 40);
print('function - void type');
void calculate({int? x = 0 , int? y = 0}){
    var z = x! + y!;
    print('i am z value: $z');
}
print('welcome to my calculations app');
print('pass 2 number to sum them');
var firstNumber;
var secondNumber;

while(true){
  if(firstNumber == null){
    try {
      print('inter the first number');
       firstNumber = int.parse(stdin.readLineSync()!);
    } catch (e) {
      print('inter a valid number');
      continue;
    }
  }
    try {
      print('inter the second number');
       secondNumber = int.parse(stdin.readLineSync()!);
      break;
    } catch (e) {
      print('inter a valid number');
    }
  }
  calculate(y:firstNumber , x:secondNumber);

}