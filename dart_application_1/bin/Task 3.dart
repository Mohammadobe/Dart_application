import 'dart:io';
void main(){

String userName = 'Mohammad';
int passWord = 1234;
while(true){

  print('enter your choice:');
  int choice = int.parse(stdin.readLineSync()!);
  if(choice == 1){
    print('Register');
  }

  else if(choice == 2){
    print('Log in');

    print('Enter username:');
    String? name = stdin.readLineSync();

    print('Enter password:');
    int pass = int.parse(stdin.readLineSync()!);

    if(name == userName && pass == passWord){
    print('Welcome $userName');
  }

    else{
      print('Incorrect username or password');
      continue;
    }

  }

  else{
    print('Try again');
    continue;
  }
  break;
  }

}