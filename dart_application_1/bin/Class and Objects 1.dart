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

void updateInfo(){

  print('__' * 10);
  print('Update the person data');

  print('Update the name: $name');
  var name1 = stdin.readLineSync();
  if(name1 == ''){
    name = name;
    print('this is name from class ($name)');
  }

  else{
    name = name1;
    print('this is name from class ($name)');
  }

  print('Update the job: $job');
  var job1 = stdin.readLineSync();
  if(job1 == ''){
    job = job;
    print('this is job from class ($job)');
  }

  else{
    job = job1;
    print('this is job from class ($job)');
  }

  print('Update the gender: $gender');
  var gender1 = stdin.readLineSync();
  if(gender1 == ''){
    gender = gender;
    print('this is gender from class ($gender)');
  }

  else{
    gender = gender1;
    print('this is gender from class ($gender)');
  }

  var ssn1;
  var age1;
  var tall1;
  var relation1;

  while(true){

    if(ssn != ssn1){
      try {  
        print('Update the ssn: $ssn');
        ssn1 = stdin.readLineSync();
        if(ssn1 == ''){
          ssn = ssn;
          ssn1 = ssn;
          print('this is ssn from class ($ssn)');
        }

        else{
          ssn = int.parse(ssn1);
          print('this is ssn from class ($ssn)');
        }
      } 

      catch (e) {  
        print('enter a valid ssn');
        continue;
      }
    }

    if(age != age1){
      try {
        print('Update the age: $age');
        age1 = stdin.readLineSync();
        if(age1 == ''){
          age = age;
          age1 = age;
          print('this is age from class ($age)');
        }

        else{
          age = int.parse(age1);
          print('this is age from class ($age)');
        }
      } 

      catch (e) {
        print('enter a valid age');
        continue;
      }
    }

    if(tall != tall1){
      try {      
        print('Update the tall: $tall');
        tall1 = stdin.readLineSync();
        if(tall1 == ''){
          tall = tall;
          tall1 = tall;
          print('this is tall from class ($tall)');
        }

        else{
          tall = double.parse(tall1);
          print('this is tall from class ($tall)');
        }
        break;
      } 

      catch (e) {     
        print('enter a valid tall');
        continue;    
      }
    }

    if(relation != relation1){
      try {      
        print('Update the relation: $relation');
        relation1 = stdin.readLineSync();
        if(relation1 == ''){
          relation = relation;
          relation1 = relation;
          print('this is relation from class ($relation)');
        }

        else{
          relation = bool.parse(relation1);
          print('this is relation from class ($relation)');
        }
      } 

      catch (e) {     
        print('enter a valid relation');
        continue;    
      }
    }
    break;
  }
  info();
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
      for(var i = 0 ; i < allPersons.length ; i++){
        print('__' * 10);
        print('This is person number ${i+1}');
        print('Person name: ${allPersons[i].name}');
      }

      print('__' * 10);
      print('Choice the person number to display his information');
      
      int? choicePerson;
      while(true){

        try {
          print('enter a valid index');
          choicePerson = int.parse(stdin.readLineSync()!);
          if(choicePerson > allPersons.length){
            print('enter a valid index');
            choicePerson = int.parse(stdin.readLineSync()!);
          }

          else{
            break;
          }

        } 

        catch (e) {
          print('Wrong number!');
        }

      }
       print('__' * 10);
       print('This is the person info');
       allPersons[choicePerson - 1].info();

       print('__' * 10);
       print('1- To update person information');
       print('2- Delete person');

       var removeOrUpdate = int.parse((stdin.readLineSync()!));
       if(removeOrUpdate == 1){
        allPersons[choicePerson - 1].updateInfo();
       }

       else if(removeOrUpdate == 2){

        while(true){
          
          print('__' * 10);
          print('Do you want to remove this person y/n');
          var removeOrNot = stdin.readLineSync();

          if(removeOrNot == 'y'){
            //allPersons.remove(allPersons[choicePerson - 1]);
            allPersons.removeAt(choicePerson - 1);
            print('Person removed');
            break;
          }

          else if(removeOrNot == 'n'){
            break;
          }

          else{
            print('Wrong choice!');
          }
        }
      }
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