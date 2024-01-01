import 'dart:io';

// class intro{

//   String? name;
//   intro(this.name);

//   String callName(){

//     return 'This is name from class $name';
//   }
// }

// void main(){

//   String studentName = 'Sami';
//   String teacherName = 'Ali';
//   intro obj1 = intro(studentName);
//   intro obj2 = intro(teacherName);
//   print(obj1.callName());

// }


class Person{

  //Attribute
  String? name;
  int? ssn;
  int? age;
  String? gender;
  double? tall;
  String? job;
  bool? relation;

  //Constructor
  Person(this.name , this.ssn , this.age , this.gender , this.tall , this.job , this.relation);

void info(){
  
  print('Name: $name');
  print('Ssn: $ssn');
  print('Age: $age');
  print('Gender: $gender');
  print('Tall: $tall');
  print('Job: $job');
  print('Relation: $relation');

  }
}

void main(){

  List allPersons = [];
  while(true){
    
    print('__' * 10);
    print('Welcome to our app');
    print('1- Create a new person');
    print('2- Show all person');
    print('3- Exit');
    print('enter your choice');

    String? Choice = stdin.readLineSync();
    print('__' * 10);

    if(Choice == '1'){

      print('enter the person name:');
      String? name = stdin.readLineSync();

      print('enter the gender person');
      String? gender = stdin.readLineSync();

      print('enter the job person');
      String? job = stdin.readLineSync();

      int? ssn;
      int? age;
      double? tall;
      bool? relation;

      while(true){

        if(ssn == null){
          try {  
            print('enter the ssn person:');
            ssn = int.parse((stdin.readLineSync())!);
            } 
          catch (e) {  
            print('enter a valid ssn');
            continue;
            }
          }

        if(age == null){
          try {
            print('enter the age person:');
            age = int.parse((stdin.readLineSync())!);
            } 
          catch (e) {
            print('enter a valid age');
            continue;
            }
          }

        if(tall == null){
          try {      
            print('enter the tall person:');
            tall = double.parse((stdin.readLineSync())!);
            } 
          catch (e) {     
            print('enter a valid tall');
            continue;    
          }
        }

        if(relation == null){
          try {      
            print('enter the relation person:');
            relation = bool.parse((stdin.readLineSync())!);
            } 
          catch (e) {     
            print('enter a valid relation');
            continue;    
          }
        }
        break;
      }
        print('__' * 10);
        Person pers = Person(name , ssn , age , gender , tall , job , relation);
        pers.info();
        allPersons.add(pers);
    }

    else if(Choice == '2'){
      print(allPersons);
    }

    else if(Choice == '3'){
      print('See you ^_^');
      break;
    }

    else{
      print('Wrong choice!');
    }
  }
}