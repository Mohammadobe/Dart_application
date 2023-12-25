import 'dart:io';
void main(){

  while(true){

    print('enter the name');
    String? name = stdin.readLineSync();
    print('My name is: $name');
    print('_' * 10);

    int number = int.parse(stdin.readLineSync()!);
    for(int i=0; i < number; i++){
        print(name);
    }
    break; 
  }  
}
