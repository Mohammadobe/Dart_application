import 'dart:io';

void main(){

    void personInfo({String? name , int? age , String? address , String? city}){
        print('My name: $name');
        print('My age: $age');
        print('My address: $address');
        print('My city: $city');
    }

    var firstName;
    var firstAge;
    var firstAddress;
    var firstCity;

    while(true){

      if(firstName == null){
      try {
        print('enter your name:');
        firstName = stdin.readLineSync();
      } 
      catch (e) {
        print('inter a valid name');
        continue;
      }
      }
      try {
        print('enter your age:');
        firstAge = int.parse(stdin.readLineSync()!);
      } 
      catch (e) {
        print('inter a valid age');
        continue;
      }
    
      try {
        print('enter your address:');
        firstAddress = stdin.readLineSync();
      }
       catch (e) {
        print('inter a valid address');
        continue;
      }

      try {
        print('enter your city:');
        firstCity = stdin.readLineSync();
        break;
      } 
      catch (e) {
        print('inter a valid city');
      }
   }
    print('__' * 10);
    personInfo(name:firstName , age:firstAge , address:firstAddress , city:firstCity);   
}