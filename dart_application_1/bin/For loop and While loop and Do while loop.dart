import 'dart:io';

void main(){

// for loop
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
    //print('iam after break');
  }
  else{
    print('try again');
  }
} while (isTrue);

}