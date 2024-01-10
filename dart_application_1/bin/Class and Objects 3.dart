import 'dart:io';

class Animal {
  
  String name;
  int age;
  String gender;
  String color;
  String animalType;
  String location;
  String description;

  Animal(this.name , this.age , this.gender , this.color , this.animalType ,
         this.location , this.description);

  String toString(){    
    return "Animal: $name , $age , $gender , $color , $animalType , $location , $description";
  }

  void animalEat(){
    print('$name is eating');
  }

  void animalSleep(){
    print('$name is sleeping');
  }

  void animalPlay(){
    print('$name is playing');
  }

  void animalWalk(){
    print('$name is walking');
  }

}

class Cat extends Animal{

  bool friendly;
  Cat(String name , int age , String gender , String color , String animalType ,
      String location , String description , this.friendly)
      : super(name , age , gender , color , animalType , location , description); 

  void clime() {
    print('$name is climing');
  }

}

void main(){

  var cat = Cat('Luna' , 2 , 'Female' , 'White' , 'Cat' , 'Kenya' , 'Luna is a friendly cat' , true);
  print(cat);

  cat.animalEat();
  cat.animalSleep();
  cat.animalPlay();
  cat.animalWalk();
  cat.clime();

}